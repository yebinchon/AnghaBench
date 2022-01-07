
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_pinctrl_soc_info {int flags; scalar_t__ generic_pinconf; } ;
struct imx_pinctrl {int dev; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin {int dummy; } ;
struct group_desc {int num_pins; int * pins; void* data; int name; } ;
struct device_node {int name; } ;
typedef int __be32 ;


 int EINVAL ;
 int ENOMEM ;
 int FSL_PIN_SHARE_SIZE ;
 int FSL_PIN_SIZE ;
 int FSL_SCU_PIN_SIZE ;
 int GFP_KERNEL ;
 int IMX_USE_SCU ;
 int SHARE_MUX_CONF_REG ;
 int dev_dbg (int ,char*,int ,struct device_node*) ;
 int dev_err (int ,char*,struct device_node*) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 int imx_pinctrl_parse_pin_mmio (struct imx_pinctrl*,int *,struct imx_pin*,int const**,struct device_node*) ;
 int imx_pinctrl_parse_pin_scu (struct imx_pinctrl*,int *,struct imx_pin*,int const**) ;
 int * of_get_property (struct device_node*,char*,int*) ;

__attribute__((used)) static int imx_pinctrl_parse_groups(struct device_node *np,
        struct group_desc *grp,
        struct imx_pinctrl *ipctl,
        u32 index)
{
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 struct imx_pin *pin;
 int size, pin_size;
 const __be32 *list;
 int i;

 dev_dbg(ipctl->dev, "group(%d): %pOFn\n", index, np);

 if (info->flags & IMX_USE_SCU)
  pin_size = FSL_SCU_PIN_SIZE;
 else if (info->flags & SHARE_MUX_CONF_REG)
  pin_size = FSL_PIN_SHARE_SIZE;
 else
  pin_size = FSL_PIN_SIZE;

 if (info->generic_pinconf)
  pin_size -= 4;


 grp->name = np->name;
 list = of_get_property(np, "fsl,pins", &size);
 if (!list) {
  list = of_get_property(np, "pinmux", &size);
  if (!list) {
   dev_err(ipctl->dev,
    "no fsl,pins and pins property in node %pOF\n", np);
   return -EINVAL;
  }
 }


 if (!size || size % pin_size) {
  dev_err(ipctl->dev, "Invalid fsl,pins or pins property in node %pOF\n", np);
  return -EINVAL;
 }

 grp->num_pins = size / pin_size;
 grp->data = devm_kcalloc(ipctl->dev,
     grp->num_pins, sizeof(struct imx_pin),
     GFP_KERNEL);
 grp->pins = devm_kcalloc(ipctl->dev,
     grp->num_pins, sizeof(unsigned int),
     GFP_KERNEL);
 if (!grp->pins || !grp->data)
  return -ENOMEM;

 for (i = 0; i < grp->num_pins; i++) {
  pin = &((struct imx_pin *)(grp->data))[i];
  if (info->flags & IMX_USE_SCU)
   imx_pinctrl_parse_pin_scu(ipctl, &grp->pins[i],
        pin, &list);
  else
   imx_pinctrl_parse_pin_mmio(ipctl, &grp->pins[i],
         pin, &list, np);
 }

 return 0;
}
