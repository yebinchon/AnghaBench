
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int confirm_wait; } ;
struct TYPE_3__ {scalar_t__ power_mgmt; scalar_t__ operation_mode; } ;
struct ks_wlan_private {int dev_state; TYPE_2__ psstatus; TYPE_1__ reg; } ;


 int DEVICE_STATE_READY ;
 int DEVICE_STATE_SLEEP ;
 scalar_t__ MODE_INFRASTRUCTURE ;
 scalar_t__ POWER_MGMT_ACTIVE ;
 int atomic_set (int *,int ) ;
 int ks_wlan_hw_power_save (struct ks_wlan_private*) ;

__attribute__((used)) static
void hostif_power_mgmt_confirm(struct ks_wlan_private *priv)
{
 if (priv->reg.power_mgmt > POWER_MGMT_ACTIVE &&
     priv->reg.operation_mode == MODE_INFRASTRUCTURE) {
  atomic_set(&priv->psstatus.confirm_wait, 0);
  priv->dev_state = DEVICE_STATE_SLEEP;
  ks_wlan_hw_power_save(priv);
 } else {
  priv->dev_state = DEVICE_STATE_READY;
 }
}
