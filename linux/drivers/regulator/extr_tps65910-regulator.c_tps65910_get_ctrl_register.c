
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int TPS65910_BBCH ;
 int TPS65910_VAUX1 ;
 int TPS65910_VAUX2 ;
 int TPS65910_VAUX33 ;
 int TPS65910_VDAC ;
 int TPS65910_VDD1 ;
 int TPS65910_VDD2 ;
 int TPS65910_VDD3 ;
 int TPS65910_VDIG1 ;
 int TPS65910_VDIG2 ;
 int TPS65910_VIO ;
 int TPS65910_VMMC ;
 int TPS65910_VPLL ;
 int TPS65910_VRTC ;

__attribute__((used)) static int tps65910_get_ctrl_register(int id)
{
 switch (id) {
 case 128:
  return TPS65910_VRTC;
 case 131:
  return TPS65910_VIO;
 case 136:
  return TPS65910_VDD1;
 case 135:
  return TPS65910_VDD2;
 case 134:
  return TPS65910_VDD3;
 case 133:
  return TPS65910_VDIG1;
 case 132:
  return TPS65910_VDIG2;
 case 129:
  return TPS65910_VPLL;
 case 137:
  return TPS65910_VDAC;
 case 141:
  return TPS65910_VAUX1;
 case 140:
  return TPS65910_VAUX2;
 case 139:
  return TPS65910_VAUX33;
 case 130:
  return TPS65910_VMMC;
 case 138:
  return TPS65910_BBCH;
 default:
  return -EINVAL;
 }
}
