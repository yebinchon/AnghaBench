
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int mdelay (int) ;
 int rtl8225se_write_phy_ofdm (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void rtl8187se_write_initial_gain(struct ieee80211_hw *dev,
     int init_gain)
{
 switch (init_gain) {
 default:
  rtl8225se_write_phy_ofdm(dev, 0x17, 0x26); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x05, 0xFA); mdelay(1);
  break;
 case 2:
  rtl8225se_write_phy_ofdm(dev, 0x17, 0x36); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x05, 0xFA); mdelay(1);
  break;
 case 3:
  rtl8225se_write_phy_ofdm(dev, 0x17, 0x36); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x05, 0xFB); mdelay(1);
  break;
 case 4:
  rtl8225se_write_phy_ofdm(dev, 0x17, 0x46); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x24, 0x86); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x05, 0xFB); mdelay(1);
  break;
 case 5:
  rtl8225se_write_phy_ofdm(dev, 0x17, 0x46); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x24, 0x96); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x05, 0xFB); mdelay(1);
  break;
 case 6:
  rtl8225se_write_phy_ofdm(dev, 0x17, 0x56); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x24, 0x96); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x05, 0xFC); mdelay(1);
  break;
 case 7:
  rtl8225se_write_phy_ofdm(dev, 0x17, 0x56); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x24, 0xA6); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x05, 0xFC); mdelay(1);
  break;
 case 8:
  rtl8225se_write_phy_ofdm(dev, 0x17, 0x66); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x24, 0xB6); mdelay(1);
  rtl8225se_write_phy_ofdm(dev, 0x05, 0xFC); mdelay(1);
  break;
 }
}
