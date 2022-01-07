
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8192_priv {int ReceiveConfig; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_device {scalar_t__ state; scalar_t__ pairwise_key_type; scalar_t__ iw_mode; } ;


 int EnableHWSecurityConfig8192 (struct net_device*) ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ KEY_TYPE_WEP104 ;
 scalar_t__ KEY_TYPE_WEP40 ;
 int RCR ;
 int RCR_CBSSID ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_dword (struct net_device*,int ,int *) ;
 int rtl8192_net_update (struct net_device*) ;
 int rtl8192_update_ratr_table (struct net_device*) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

__attribute__((used)) static void rtl8192_link_change(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device *ieee = priv->ieee80211;

 if (ieee->state == IEEE80211_LINKED) {
  rtl8192_net_update(dev);
  rtl8192_update_ratr_table(dev);




  if (ieee->pairwise_key_type == KEY_TYPE_WEP40 ||
      ieee->pairwise_key_type == KEY_TYPE_WEP104)
   EnableHWSecurityConfig8192(dev);
 }

 if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC) {
  u32 reg = 0;

  read_nic_dword(dev, RCR, &reg);
  if (priv->ieee80211->state == IEEE80211_LINKED)
   priv->ReceiveConfig = reg |= RCR_CBSSID;
  else
   priv->ReceiveConfig = reg &= ~RCR_CBSSID;
  write_nic_dword(dev, RCR, reg);
 }
}
