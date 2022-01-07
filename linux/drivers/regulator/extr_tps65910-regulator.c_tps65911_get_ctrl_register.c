
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;




 int TPS65910_VDD1 ;
 int TPS65910_VDD2 ;
 int TPS65910_VIO ;
 int TPS65910_VRTC ;
 int TPS65911_LDO1 ;
 int TPS65911_LDO2 ;
 int TPS65911_LDO3 ;
 int TPS65911_LDO4 ;
 int TPS65911_LDO5 ;
 int TPS65911_LDO6 ;
 int TPS65911_LDO7 ;
 int TPS65911_LDO8 ;
 int TPS65911_VDDCTRL ;

__attribute__((used)) static int tps65911_get_ctrl_register(int id)
{
 switch (id) {
 case 137:
  return TPS65910_VRTC;
 case 138:
  return TPS65910_VIO;
 case 140:
  return TPS65910_VDD1;
 case 139:
  return TPS65910_VDD2;
 case 128:
  return TPS65911_VDDCTRL;
 case 136:
  return TPS65911_LDO1;
 case 135:
  return TPS65911_LDO2;
 case 134:
  return TPS65911_LDO3;
 case 133:
  return TPS65911_LDO4;
 case 132:
  return TPS65911_LDO5;
 case 131:
  return TPS65911_LDO6;
 case 130:
  return TPS65911_LDO7;
 case 129:
  return TPS65911_LDO8;
 default:
  return -EINVAL;
 }
}
