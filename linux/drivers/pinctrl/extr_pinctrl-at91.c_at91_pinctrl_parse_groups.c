
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int name; } ;
struct at91_pmx_pin {int bank; void* conf; void* mux; void* pin; } ;
struct at91_pinctrl {int dev; } ;
struct at91_pin_group {int npins; void** pins; struct at91_pmx_pin* pins_conf; int name; } ;
typedef int __be32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_NB_GPIO_PER_BANK ;
 int at91_pin_dbg (int ,struct at91_pmx_pin*) ;
 void* be32_to_cpu (int ) ;
 int dev_dbg (int ,char*,int ,struct device_node*) ;
 int dev_err (int ,char*) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 int * of_get_property (struct device_node*,char*,int*) ;

__attribute__((used)) static int at91_pinctrl_parse_groups(struct device_node *np,
         struct at91_pin_group *grp,
         struct at91_pinctrl *info, u32 index)
{
 struct at91_pmx_pin *pin;
 int size;
 const __be32 *list;
 int i, j;

 dev_dbg(info->dev, "group(%d): %pOFn\n", index, np);


 grp->name = np->name;





 list = of_get_property(np, "atmel,pins", &size);

 size /= sizeof(*list);
 if (!size || size % 4) {
  dev_err(info->dev, "wrong pins number or pins and configs should be by 4\n");
  return -EINVAL;
 }

 grp->npins = size / 4;
 pin = grp->pins_conf = devm_kcalloc(info->dev,
         grp->npins,
         sizeof(struct at91_pmx_pin),
         GFP_KERNEL);
 grp->pins = devm_kcalloc(info->dev, grp->npins, sizeof(unsigned int),
     GFP_KERNEL);
 if (!grp->pins_conf || !grp->pins)
  return -ENOMEM;

 for (i = 0, j = 0; i < size; i += 4, j++) {
  pin->bank = be32_to_cpu(*list++);
  pin->pin = be32_to_cpu(*list++);
  grp->pins[j] = pin->bank * MAX_NB_GPIO_PER_BANK + pin->pin;
  pin->mux = be32_to_cpu(*list++);
  pin->conf = be32_to_cpu(*list++);

  at91_pin_dbg(info->dev, pin);
  pin++;
 }

 return 0;
}
