
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {scalar_t__ sleep_mode; } ;


 scalar_t__ SLP_ACTIVE ;
 scalar_t__ SLP_SLEEP ;
 int hostif_sleep_request (struct ks_wlan_private*,scalar_t__) ;

__attribute__((used)) static void hostif_sme_sleep_set(struct ks_wlan_private *priv)
{
 if (priv->sleep_mode != SLP_SLEEP &&
     priv->sleep_mode != SLP_ACTIVE)
  return;

 hostif_sleep_request(priv, priv->sleep_mode);
}
