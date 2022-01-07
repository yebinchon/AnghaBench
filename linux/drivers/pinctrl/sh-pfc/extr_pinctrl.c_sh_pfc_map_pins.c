
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct sh_pfc_pinctrl {struct pinctrl_pin_desc* pins; void* configs; } ;
struct sh_pfc_pin {unsigned int pin; int name; } ;
struct sh_pfc {TYPE_1__* info; int dev; } ;
struct pinctrl_pin_desc {unsigned int number; int name; } ;
struct TYPE_2__ {unsigned int nr_pins; struct sh_pfc_pin* pins; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (int ,unsigned int,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sh_pfc_map_pins(struct sh_pfc *pfc, struct sh_pfc_pinctrl *pmx)
{
 unsigned int i;


 pmx->pins = devm_kcalloc(pfc->dev,
     pfc->info->nr_pins, sizeof(*pmx->pins),
     GFP_KERNEL);
 if (unlikely(!pmx->pins))
  return -ENOMEM;

 pmx->configs = devm_kcalloc(pfc->dev,
        pfc->info->nr_pins, sizeof(*pmx->configs),
        GFP_KERNEL);
 if (unlikely(!pmx->configs))
  return -ENOMEM;

 for (i = 0; i < pfc->info->nr_pins; ++i) {
  const struct sh_pfc_pin *info = &pfc->info->pins[i];
  struct pinctrl_pin_desc *pin = &pmx->pins[i];


  pin->number = info->pin != (u16)-1 ? info->pin : i;
  pin->name = info->name;
 }

 return 0;
}
