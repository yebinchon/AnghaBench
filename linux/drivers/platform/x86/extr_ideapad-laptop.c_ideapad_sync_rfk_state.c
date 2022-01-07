
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ideapad_private {scalar_t__* rfk; TYPE_1__* adev; scalar_t__ has_hw_rfkill_switch; } ;
struct TYPE_2__ {int handle; } ;


 int IDEAPAD_RFKILL_DEV_NUM ;
 int VPCCMD_R_RF ;
 scalar_t__ read_ec_data (int ,int ,unsigned long*) ;
 int rfkill_set_hw_state (scalar_t__,unsigned long) ;

__attribute__((used)) static void ideapad_sync_rfk_state(struct ideapad_private *priv)
{
 unsigned long hw_blocked = 0;
 int i;

 if (priv->has_hw_rfkill_switch) {
  if (read_ec_data(priv->adev->handle, VPCCMD_R_RF, &hw_blocked))
   return;
  hw_blocked = !hw_blocked;
 }

 for (i = 0; i < IDEAPAD_RFKILL_DEV_NUM; i++)
  if (priv->rfk[i])
   rfkill_set_hw_state(priv->rfk[i], hw_blocked);
}
