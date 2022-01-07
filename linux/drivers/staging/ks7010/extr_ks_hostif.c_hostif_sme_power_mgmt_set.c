
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ power_mgmt; scalar_t__ operation_mode; } ;
struct ks_wlan_private {TYPE_1__ reg; } ;


 scalar_t__ MODE_INFRASTRUCTURE ;
 int POWER_ACTIVE ;
 scalar_t__ POWER_MGMT_SAVE1 ;
 scalar_t__ POWER_MGMT_SAVE2 ;
 int POWER_SAVE ;
 int hostif_power_mgmt_request (struct ks_wlan_private*,int,int,int) ;

__attribute__((used)) static void hostif_sme_power_mgmt_set(struct ks_wlan_private *priv)
{
 u32 mode, wake_up, receive_dtims;

 if (priv->reg.power_mgmt != POWER_MGMT_SAVE1 &&
     priv->reg.power_mgmt != POWER_MGMT_SAVE2) {
  mode = POWER_ACTIVE;
  wake_up = 0;
  receive_dtims = 0;
 } else {
  mode = (priv->reg.operation_mode == MODE_INFRASTRUCTURE) ?
   POWER_SAVE : POWER_ACTIVE;
  wake_up = 0;
  receive_dtims = (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
     priv->reg.power_mgmt == POWER_MGMT_SAVE2);
 }

 hostif_power_mgmt_request(priv, mode, wake_up, receive_dtims);
}
