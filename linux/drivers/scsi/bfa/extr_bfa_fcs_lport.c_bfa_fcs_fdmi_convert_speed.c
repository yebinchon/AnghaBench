
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int bfa_port_speed_t ;
 int FDMI_TRANS_SPEED_10G ;
 int FDMI_TRANS_SPEED_16G ;
 int FDMI_TRANS_SPEED_4G ;
 int FDMI_TRANS_SPEED_8G ;
 int FDMI_TRANS_SPEED_UNKNOWN ;

u32
bfa_fcs_fdmi_convert_speed(bfa_port_speed_t pport_speed)
{
 u32 ret;

 switch (pport_speed) {
 case 131:
 case 130:
  ret = pport_speed;
  break;

 case 129:
  ret = FDMI_TRANS_SPEED_4G;
  break;

 case 128:
  ret = FDMI_TRANS_SPEED_8G;
  break;

 case 133:
  ret = FDMI_TRANS_SPEED_10G;
  break;

 case 132:
  ret = FDMI_TRANS_SPEED_16G;
  break;

 default:
  ret = FDMI_TRANS_SPEED_UNKNOWN;
 }
 return ret;
}
