
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct imx_rproc_dcfg {int att_size; struct imx_rproc_att* att; } ;
struct imx_rproc_att {int flags; int size; int sa; } ;
struct imx_rproc {TYPE_1__* mem; struct imx_rproc_dcfg* dcfg; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int size; int sys_addr; int cpu_addr; } ;


 int ATT_OWN ;
 int ENOMEM ;
 int IMX7D_RPROC_MEM_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_count_phandle_with_args (struct device_node*,char*,int *) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int imx_rproc_addr_init(struct imx_rproc *priv,
          struct platform_device *pdev)
{
 const struct imx_rproc_dcfg *dcfg = priv->dcfg;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 int a, b = 0, err, nph;


 for (a = 0; a < dcfg->att_size; a++) {
  const struct imx_rproc_att *att = &dcfg->att[a];

  if (!(att->flags & ATT_OWN))
   continue;

  if (b >= IMX7D_RPROC_MEM_MAX)
   break;

  priv->mem[b].cpu_addr = devm_ioremap(&pdev->dev,
           att->sa, att->size);
  if (!priv->mem[b].cpu_addr) {
   dev_err(dev, "devm_ioremap_resource failed\n");
   return -ENOMEM;
  }
  priv->mem[b].sys_addr = att->sa;
  priv->mem[b].size = att->size;
  b++;
 }


 nph = of_count_phandle_with_args(np, "memory-region", ((void*)0));
 if (nph <= 0)
  return 0;


 for (a = 0; a < nph; a++) {
  struct device_node *node;
  struct resource res;

  node = of_parse_phandle(np, "memory-region", a);
  err = of_address_to_resource(node, 0, &res);
  if (err) {
   dev_err(dev, "unable to resolve memory region\n");
   return err;
  }

  if (b >= IMX7D_RPROC_MEM_MAX)
   break;

  priv->mem[b].cpu_addr = devm_ioremap_resource(&pdev->dev, &res);
  if (IS_ERR(priv->mem[b].cpu_addr)) {
   dev_err(dev, "devm_ioremap_resource failed\n");
   err = PTR_ERR(priv->mem[b].cpu_addr);
   return err;
  }
  priv->mem[b].sys_addr = res.start;
  priv->mem[b].size = resource_size(&res);
  b++;
 }

 return 0;
}
