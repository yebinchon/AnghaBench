
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct qcom_adsp {int halt_lpass; int halt_map; TYPE_1__* dev; int qdsp6ss_base; } ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_ioremap (TYPE_1__*,int ,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_property_read_u32_index (int ,char*,int,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int adsp_init_mmio(struct qcom_adsp *adsp,
    struct platform_device *pdev)
{
 struct device_node *syscon;
 struct resource *res;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 adsp->qdsp6ss_base = devm_ioremap(&pdev->dev, res->start,
   resource_size(res));
 if (!adsp->qdsp6ss_base) {
  dev_err(adsp->dev, "failed to map QDSP6SS registers\n");
  return -ENOMEM;
 }

 syscon = of_parse_phandle(pdev->dev.of_node, "qcom,halt-regs", 0);
 if (!syscon) {
  dev_err(&pdev->dev, "failed to parse qcom,halt-regs\n");
  return -EINVAL;
 }

 adsp->halt_map = syscon_node_to_regmap(syscon);
 of_node_put(syscon);
 if (IS_ERR(adsp->halt_map))
  return PTR_ERR(adsp->halt_map);

 ret = of_property_read_u32_index(pdev->dev.of_node, "qcom,halt-regs",
   1, &adsp->halt_lpass);
 if (ret < 0) {
  dev_err(&pdev->dev, "no offset in syscon\n");
  return ret;
 }

 return 0;
}
