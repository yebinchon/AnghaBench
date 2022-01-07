
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ideapad_private {int * rfk; TYPE_2__* adev; TYPE_3__* rfk_priv; TYPE_1__* platform_device; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ opcode; int name; } ;
struct TYPE_7__ {int dev; struct ideapad_private* priv; } ;
struct TYPE_6__ {int handle; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 scalar_t__ RFKILL_TYPE_BLUETOOTH ;
 TYPE_4__* ideapad_rfk_data ;
 int ideapad_rfk_ops ;
 scalar_t__ no_bt_rfkill ;
 scalar_t__ read_ec_data (int ,scalar_t__,unsigned long*) ;
 int rfkill_alloc (int ,int *,scalar_t__,int *,TYPE_3__*) ;
 int rfkill_destroy (int ) ;
 int rfkill_init_sw_state (int ,unsigned long) ;
 int rfkill_register (int ) ;
 int write_ec_cmd (int ,scalar_t__,int) ;

__attribute__((used)) static int ideapad_register_rfkill(struct ideapad_private *priv, int dev)
{
 int ret;
 unsigned long sw_blocked;

 if (no_bt_rfkill &&
     (ideapad_rfk_data[dev].type == RFKILL_TYPE_BLUETOOTH)) {

  write_ec_cmd(priv->adev->handle,
        ideapad_rfk_data[dev].opcode, 1);
  return 0;
 }
 priv->rfk_priv[dev].dev = dev;
 priv->rfk_priv[dev].priv = priv;

 priv->rfk[dev] = rfkill_alloc(ideapad_rfk_data[dev].name,
          &priv->platform_device->dev,
          ideapad_rfk_data[dev].type,
          &ideapad_rfk_ops,
          &priv->rfk_priv[dev]);
 if (!priv->rfk[dev])
  return -ENOMEM;

 if (read_ec_data(priv->adev->handle, ideapad_rfk_data[dev].opcode-1,
    &sw_blocked)) {
  rfkill_init_sw_state(priv->rfk[dev], 0);
 } else {
  sw_blocked = !sw_blocked;
  rfkill_init_sw_state(priv->rfk[dev], sw_blocked);
 }

 ret = rfkill_register(priv->rfk[dev]);
 if (ret) {
  rfkill_destroy(priv->rfk[dev]);
  return ret;
 }
 return 0;
}
