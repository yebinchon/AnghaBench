
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int DLEVEL_PINS_MASK ;
 int ENOTSUPP ;




 int PULL_PINS_MASK ;
 int sunxi_dlevel_offset (unsigned int) ;
 int sunxi_dlevel_reg (unsigned int) ;
 int sunxi_pull_offset (unsigned int) ;
 int sunxi_pull_reg (unsigned int) ;

__attribute__((used)) static int sunxi_pconf_reg(unsigned pin, enum pin_config_param param,
      u32 *offset, u32 *shift, u32 *mask)
{
 switch (param) {
 case 128:
  *offset = sunxi_dlevel_reg(pin);
  *shift = sunxi_dlevel_offset(pin);
  *mask = DLEVEL_PINS_MASK;
  break;

 case 129:
 case 130:
 case 131:
  *offset = sunxi_pull_reg(pin);
  *shift = sunxi_pull_offset(pin);
  *mask = PULL_PINS_MASK;
  break;

 default:
  return -ENOTSUPP;
 }

 return 0;
}
