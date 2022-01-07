
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_POWER_OFF ;
 int mdelay (int) ;
 int olpc_ec_cmd (int ,int *,int ,int *,int ) ;

__attribute__((used)) static void olpc_xo175_ec_power_off(void)
{
 while (1) {
  olpc_ec_cmd(CMD_POWER_OFF, ((void*)0), 0, ((void*)0), 0);
  mdelay(1000);
 }
}
