
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EEEPC_EC_FAN_CTRL ;
 int EEEPC_EC_FAN_CTRL_BIT ;
 int EEEPC_FAN_CTRL_AUTO ;
 int EEEPC_FAN_CTRL_MANUAL ;
 int ec_read (int ,int*) ;

__attribute__((used)) static int eeepc_get_fan_ctrl(void)
{
 u8 value = 0;

 ec_read(EEEPC_EC_FAN_CTRL, &value);
 if (value & EEEPC_EC_FAN_CTRL_BIT)
  return EEEPC_FAN_CTRL_MANUAL;
 else
  return EEEPC_FAN_CTRL_AUTO;
}
