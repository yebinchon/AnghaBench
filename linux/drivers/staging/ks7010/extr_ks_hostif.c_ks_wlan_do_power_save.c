
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int dev_state; int connect_status; } ;


 int DEVICE_STATE_READY ;
 int SME_POW_MNGMT_REQUEST ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 scalar_t__ is_connect_status (int ) ;

__attribute__((used)) static void ks_wlan_do_power_save(struct ks_wlan_private *priv)
{
 if (is_connect_status(priv->connect_status))
  hostif_sme_enqueue(priv, SME_POW_MNGMT_REQUEST);
 else
  priv->dev_state = DEVICE_STATE_READY;
}
