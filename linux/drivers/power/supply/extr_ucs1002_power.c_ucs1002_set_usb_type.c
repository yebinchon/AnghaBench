
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucs1002_info {int regmap; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;




 int UCS1002_REG_SWITCH_CFG ;
 unsigned int V_SET_ACTIVE_MODE_BC12_CDP ;
 unsigned int V_SET_ACTIVE_MODE_BC12_DCP ;
 unsigned int V_SET_ACTIVE_MODE_BC12_SDP ;
 unsigned int V_SET_ACTIVE_MODE_DEDICATED ;
 int V_SET_ACTIVE_MODE_MASK ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int* ucs1002_usb_types ;

__attribute__((used)) static int ucs1002_set_usb_type(struct ucs1002_info *info, int val)
{
 unsigned int mode;

 if (val < 0 || val >= ARRAY_SIZE(ucs1002_usb_types))
  return -EINVAL;

 switch (ucs1002_usb_types[val]) {
 case 129:
  mode = V_SET_ACTIVE_MODE_DEDICATED;
  break;
 case 128:
  mode = V_SET_ACTIVE_MODE_BC12_SDP;
  break;
 case 130:
  mode = V_SET_ACTIVE_MODE_BC12_DCP;
  break;
 case 131:
  mode = V_SET_ACTIVE_MODE_BC12_CDP;
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(info->regmap, UCS1002_REG_SWITCH_CFG,
      V_SET_ACTIVE_MODE_MASK, mode);
}
