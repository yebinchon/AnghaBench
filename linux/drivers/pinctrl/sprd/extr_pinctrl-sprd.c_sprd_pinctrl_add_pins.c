
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pins_info {scalar_t__ type; unsigned int reg; int bit_width; int bit_offset; int num; int name; } ;
struct sprd_pinctrl_soc_info {int npins; struct sprd_pin* pins; } ;
struct sprd_pinctrl {int dev; scalar_t__ base; struct sprd_pinctrl_soc_info* info; } ;
struct sprd_pin {scalar_t__ type; unsigned long reg; int bit_width; int bit_offset; int number; int name; } ;


 scalar_t__ COMMON_PIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GLOBAL_CTRL_PIN ;
 scalar_t__ MISC_PIN ;
 unsigned int PINCTRL_REG_LEN ;
 unsigned long PINCTRL_REG_MISC_OFFSET ;
 unsigned long PINCTRL_REG_OFFSET ;
 int dev_dbg (int ,char*,int ,int ,scalar_t__,int ,int ,unsigned long) ;
 struct sprd_pin* devm_kcalloc (int ,int,int,int ) ;

__attribute__((used)) static int sprd_pinctrl_add_pins(struct sprd_pinctrl *sprd_pctl,
     struct sprd_pins_info *sprd_soc_pin_info,
     int pins_cnt)
{
 struct sprd_pinctrl_soc_info *info = sprd_pctl->info;
 unsigned int ctrl_pin = 0, com_pin = 0;
 struct sprd_pin *pin;
 int i;

 info->npins = pins_cnt;
 info->pins = devm_kcalloc(sprd_pctl->dev,
      info->npins, sizeof(struct sprd_pin),
      GFP_KERNEL);
 if (!info->pins)
  return -ENOMEM;

 for (i = 0, pin = info->pins; i < info->npins; i++, pin++) {
  unsigned int reg;

  pin->name = sprd_soc_pin_info[i].name;
  pin->type = sprd_soc_pin_info[i].type;
  pin->number = sprd_soc_pin_info[i].num;
  reg = sprd_soc_pin_info[i].reg;
  if (pin->type == GLOBAL_CTRL_PIN) {
   pin->reg = (unsigned long)sprd_pctl->base +
    PINCTRL_REG_LEN * reg;
   pin->bit_offset = sprd_soc_pin_info[i].bit_offset;
   pin->bit_width = sprd_soc_pin_info[i].bit_width;
   ctrl_pin++;
  } else if (pin->type == COMMON_PIN) {
   pin->reg = (unsigned long)sprd_pctl->base +
    PINCTRL_REG_OFFSET + PINCTRL_REG_LEN *
    (i - ctrl_pin);
   com_pin++;
  } else if (pin->type == MISC_PIN) {
   pin->reg = (unsigned long)sprd_pctl->base +
    PINCTRL_REG_MISC_OFFSET + PINCTRL_REG_LEN *
    (i - ctrl_pin - com_pin);
  }
 }

 for (i = 0, pin = info->pins; i < info->npins; pin++, i++) {
  dev_dbg(sprd_pctl->dev, "pin name[%s-%d], type = %d, "
   "bit offset = %ld, bit width = %ld, reg = 0x%lx\n",
   pin->name, pin->number, pin->type,
   pin->bit_offset, pin->bit_width, pin->reg);
 }

 return 0;
}
