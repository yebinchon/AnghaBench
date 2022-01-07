
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct wmt_pinctrl_data {int dev; TYPE_1__* banks; } ;
struct TYPE_2__ {size_t reg_en; size_t reg_dir; } ;


 int BIT (size_t) ;
 int EINVAL ;
 size_t NO_REG ;
 size_t WMT_BANK_FROM_PIN (unsigned int) ;
 size_t WMT_BIT_FROM_PIN (unsigned int) ;



 int dev_err (int ,char*,unsigned int) ;
 int wmt_clearbits (struct wmt_pinctrl_data*,size_t,int ) ;
 int wmt_setbits (struct wmt_pinctrl_data*,size_t,int ) ;

__attribute__((used)) static int wmt_set_pinmux(struct wmt_pinctrl_data *data, unsigned func,
     unsigned pin)
{
 u32 bank = WMT_BANK_FROM_PIN(pin);
 u32 bit = WMT_BIT_FROM_PIN(pin);
 u32 reg_en = data->banks[bank].reg_en;
 u32 reg_dir = data->banks[bank].reg_dir;

 if (reg_dir == NO_REG) {
  dev_err(data->dev, "pin:%d no direction register defined\n",
   pin);
  return -EINVAL;
 }





 switch (func) {
 case 129:
  if (reg_en != NO_REG)
   wmt_setbits(data, reg_en, BIT(bit));
  wmt_clearbits(data, reg_dir, BIT(bit));
  break;
 case 128:
  if (reg_en != NO_REG)
   wmt_setbits(data, reg_en, BIT(bit));
  wmt_setbits(data, reg_dir, BIT(bit));
  break;
 case 130:
  if (reg_en == NO_REG) {
   dev_err(data->dev, "pin:%d no alt function available\n",
    pin);
   return -EINVAL;
  }
  wmt_clearbits(data, reg_en, BIT(bit));
 }

 return 0;
}
