
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int * OFDM_CONFIG ;
 int rtl8225se_write_phy_ofdm (struct ieee80211_hw*,int,int ) ;

__attribute__((used)) static void rtl8187se_write_ofdm_config(struct ieee80211_hw *dev)
{

 int i;

 for (i = 0; i < 60; i++)
  rtl8225se_write_phy_ofdm(dev, i, OFDM_CONFIG[i]);

}
