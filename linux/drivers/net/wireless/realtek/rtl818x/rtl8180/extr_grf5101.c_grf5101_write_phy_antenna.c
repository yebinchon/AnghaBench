
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8180_priv {int rfparam; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;


 int BB_ANTATTEN_CHAN14 ;
 int BB_ANTENNA_B ;
 int GRF5101_ANTENNA ;
 int RF_PARAM_ANTBDEFAULT ;
 int rtl8180_write_phy (struct ieee80211_hw*,int,int ) ;

__attribute__((used)) static void grf5101_write_phy_antenna(struct ieee80211_hw *dev, short chan)
{
 struct rtl8180_priv *priv = dev->priv;
 u8 ant = GRF5101_ANTENNA;

 if (priv->rfparam & RF_PARAM_ANTBDEFAULT)
  ant |= BB_ANTENNA_B;

 if (chan == 14)
  ant |= BB_ANTATTEN_CHAN14;

 rtl8180_write_phy(dev, 0x10, ant);
}
