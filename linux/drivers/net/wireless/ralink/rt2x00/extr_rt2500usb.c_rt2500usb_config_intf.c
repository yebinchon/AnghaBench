
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00intf_conf {scalar_t__ type; int sync; int bssid; int mac; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
typedef int __le16 ;


 unsigned int const CONFIG_UPDATE_BSSID ;
 unsigned int const CONFIG_UPDATE_MAC ;
 unsigned int const CONFIG_UPDATE_TYPE ;
 unsigned int GET_DURATION (int ,int) ;
 int IEEE80211_HEADER ;
 int MAC_CSR2 ;
 int MAC_CSR5 ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 unsigned int PREAMBLE ;
 int TXRX_CSR18 ;
 int TXRX_CSR18_OFFSET ;
 int TXRX_CSR19 ;
 int TXRX_CSR19_TSF_SYNC ;
 int TXRX_CSR20 ;
 int TXRX_CSR20_BCN_EXPECT_WINDOW ;
 int TXRX_CSR20_OFFSET ;
 int rt2500usb_register_multiwrite (struct rt2x00_dev*,int ,int ,int) ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field16 (int *,int ,int) ;

__attribute__((used)) static void rt2500usb_config_intf(struct rt2x00_dev *rt2x00dev,
      struct rt2x00_intf *intf,
      struct rt2x00intf_conf *conf,
      const unsigned int flags)
{
 unsigned int bcn_preload;
 u16 reg;

 if (flags & CONFIG_UPDATE_TYPE) {



  bcn_preload = PREAMBLE + GET_DURATION(IEEE80211_HEADER, 20);
  reg = rt2500usb_register_read(rt2x00dev, TXRX_CSR20);
  rt2x00_set_field16(&reg, TXRX_CSR20_OFFSET, bcn_preload >> 6);
  rt2x00_set_field16(&reg, TXRX_CSR20_BCN_EXPECT_WINDOW,
       2 * (conf->type != NL80211_IFTYPE_STATION));
  rt2500usb_register_write(rt2x00dev, TXRX_CSR20, reg);




  reg = rt2500usb_register_read(rt2x00dev, TXRX_CSR18);
  rt2x00_set_field16(&reg, TXRX_CSR18_OFFSET, 0);
  rt2500usb_register_write(rt2x00dev, TXRX_CSR18, reg);

  reg = rt2500usb_register_read(rt2x00dev, TXRX_CSR19);
  rt2x00_set_field16(&reg, TXRX_CSR19_TSF_SYNC, conf->sync);
  rt2500usb_register_write(rt2x00dev, TXRX_CSR19, reg);
 }

 if (flags & CONFIG_UPDATE_MAC)
  rt2500usb_register_multiwrite(rt2x00dev, MAC_CSR2, conf->mac,
           (3 * sizeof(__le16)));

 if (flags & CONFIG_UPDATE_BSSID)
  rt2500usb_register_multiwrite(rt2x00dev, MAC_CSR5, conf->bssid,
           (3 * sizeof(__le16)));
}
