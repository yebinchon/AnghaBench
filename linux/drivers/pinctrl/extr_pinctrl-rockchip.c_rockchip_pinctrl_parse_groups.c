
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_pinctrl {int dev; } ;
struct rockchip_pin_group {int npins; TYPE_1__* data; scalar_t__* pins; int name; } ;
struct rockchip_pin_config {int dummy; } ;
struct rockchip_pin_bank {scalar_t__ pin_base; } ;
struct device_node {int name; } ;
typedef int __be32 ;
struct TYPE_2__ {int nconfigs; int configs; void* func; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct rockchip_pin_bank*) ;
 int PTR_ERR (struct rockchip_pin_bank*) ;
 struct rockchip_pin_bank* bank_num_to_bank (struct rockchip_pinctrl*,int) ;
 void* be32_to_cpu (int ) ;
 int be32_to_cpup (int const*) ;
 int dev_dbg (int ,char*,int ,struct device_node*) ;
 int dev_err (int ,char*) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 struct device_node* of_find_node_by_phandle (int ) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int pinconf_generic_parse_dt_config (struct device_node*,int *,int *,int *) ;

__attribute__((used)) static int rockchip_pinctrl_parse_groups(struct device_node *np,
           struct rockchip_pin_group *grp,
           struct rockchip_pinctrl *info,
           u32 index)
{
 struct rockchip_pin_bank *bank;
 int size;
 const __be32 *list;
 int num;
 int i, j;
 int ret;

 dev_dbg(info->dev, "group(%d): %pOFn\n", index, np);


 grp->name = np->name;





 list = of_get_property(np, "rockchip,pins", &size);

 size /= sizeof(*list);
 if (!size || size % 4) {
  dev_err(info->dev, "wrong pins number or pins and configs should be by 4\n");
  return -EINVAL;
 }

 grp->npins = size / 4;

 grp->pins = devm_kcalloc(info->dev, grp->npins, sizeof(unsigned int),
      GFP_KERNEL);
 grp->data = devm_kcalloc(info->dev,
     grp->npins,
     sizeof(struct rockchip_pin_config),
     GFP_KERNEL);
 if (!grp->pins || !grp->data)
  return -ENOMEM;

 for (i = 0, j = 0; i < size; i += 4, j++) {
  const __be32 *phandle;
  struct device_node *np_config;

  num = be32_to_cpu(*list++);
  bank = bank_num_to_bank(info, num);
  if (IS_ERR(bank))
   return PTR_ERR(bank);

  grp->pins[j] = bank->pin_base + be32_to_cpu(*list++);
  grp->data[j].func = be32_to_cpu(*list++);

  phandle = list++;
  if (!phandle)
   return -EINVAL;

  np_config = of_find_node_by_phandle(be32_to_cpup(phandle));
  ret = pinconf_generic_parse_dt_config(np_config, ((void*)0),
    &grp->data[j].configs, &grp->data[j].nconfigs);
  if (ret)
   return ret;
 }

 return 0;
}
