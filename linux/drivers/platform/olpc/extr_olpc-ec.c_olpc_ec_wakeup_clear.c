
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct olpc_ec_priv {int ec_wakeup_mask; } ;


 scalar_t__ WARN_ON (int) ;
 struct olpc_ec_priv* ec_priv ;

void olpc_ec_wakeup_clear(u16 value)
{
 struct olpc_ec_priv *ec = ec_priv;

 if (WARN_ON(!ec))
  return;

 ec->ec_wakeup_mask &= ~value;
}
