
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct olpc_ec_priv {int dcon_enabled; } ;


 int EC_DCON_POWER_MODE ;
 int olpc_ec_cmd (int ,unsigned char*,int,int *,int ) ;

__attribute__((used)) static int olpc_ec_set_dcon_power(struct olpc_ec_priv *ec, bool state)
{
 unsigned char ec_byte = state;
 int ret;

 if (ec->dcon_enabled == state)
  return 0;

 ret = olpc_ec_cmd(EC_DCON_POWER_MODE, &ec_byte, 1, ((void*)0), 0);
 if (ret)
  return ret;

 ec->dcon_enabled = state;
 return 0;
}
