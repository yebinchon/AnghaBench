
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8xxxu_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;


 int BEACON_DISABLE_TSF_UPDATE ;
 int REG_BEACON_CTRL ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int ) ;

__attribute__((used)) static void rtl8xxxu_sw_scan_start(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif, const u8 *mac)
{
 struct rtl8xxxu_priv *priv = hw->priv;
 u8 val8;

 val8 = rtl8xxxu_read8(priv, REG_BEACON_CTRL);
 val8 |= BEACON_DISABLE_TSF_UPDATE;
 rtl8xxxu_write8(priv, REG_BEACON_CTRL, val8);
}
