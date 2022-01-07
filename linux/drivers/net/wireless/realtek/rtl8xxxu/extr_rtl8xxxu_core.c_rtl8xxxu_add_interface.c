
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8xxxu_priv {int dummy; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;


 int BEACON_ATIM ;
 int BEACON_DISABLE_TSF_UPDATE ;
 int BEACON_FUNCTION_ENABLE ;
 int EOPNOTSUPP ;

 int REG_BEACON_CTRL ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_set_linktype (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_stop_tx_beacon (struct rtl8xxxu_priv*) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int) ;

__attribute__((used)) static int rtl8xxxu_add_interface(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif)
{
 struct rtl8xxxu_priv *priv = hw->priv;
 int ret;
 u8 val8;

 switch (vif->type) {
 case 128:
  rtl8xxxu_stop_tx_beacon(priv);

  val8 = rtl8xxxu_read8(priv, REG_BEACON_CTRL);
  val8 |= BEACON_ATIM | BEACON_FUNCTION_ENABLE |
   BEACON_DISABLE_TSF_UPDATE;
  rtl8xxxu_write8(priv, REG_BEACON_CTRL, val8);
  ret = 0;
  break;
 default:
  ret = -EOPNOTSUPP;
 }

 rtl8xxxu_set_linktype(priv, vif->type);

 return ret;
}
