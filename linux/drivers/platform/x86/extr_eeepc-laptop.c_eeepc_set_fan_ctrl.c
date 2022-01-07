
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EEEPC_EC_FAN_CTRL ;
 int EEEPC_EC_FAN_CTRL_BIT ;
 int EEEPC_FAN_CTRL_MANUAL ;
 int ec_read (int ,int *) ;
 int ec_write (int ,int ) ;

__attribute__((used)) static void eeepc_set_fan_ctrl(int manual)
{
 u8 value = 0;

 ec_read(EEEPC_EC_FAN_CTRL, &value);
 if (manual == EEEPC_FAN_CTRL_MANUAL)
  value |= EEEPC_EC_FAN_CTRL_BIT;
 else
  value &= ~EEEPC_EC_FAN_CTRL_BIT;
 ec_write(EEEPC_EC_FAN_CTRL, value);
}
