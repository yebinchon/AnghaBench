
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8180_priv {int dummy; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;


 int RTL8225SE_ANAPARAM2_OFF ;
 int RTL8225SE_ANAPARAM_OFF ;
 int rtl8180_set_anaparam (struct rtl8180_priv*,int ) ;
 int rtl8180_set_anaparam2 (struct rtl8180_priv*,int ) ;
 int rtl8187se_rf_writereg (struct ieee80211_hw*,int,int) ;
 int rtl8225se_write_phy_ofdm (struct ieee80211_hw*,int,int) ;
 int usleep_range (int,int) ;

void rtl8225se_rf_stop(struct ieee80211_hw *dev)
{

 struct rtl8180_priv *priv = dev->priv;


 rtl8225se_write_phy_ofdm(dev, 0x10, 0x00);
 rtl8225se_write_phy_ofdm(dev, 0x12, 0x00);

 rtl8187se_rf_writereg(dev, 0x04, 0x0000);
 rtl8187se_rf_writereg(dev, 0x00, 0x0000);

 usleep_range(1000, 5000);

 rtl8180_set_anaparam(priv, RTL8225SE_ANAPARAM_OFF);
 rtl8180_set_anaparam2(priv, RTL8225SE_ANAPARAM2_OFF);
}
