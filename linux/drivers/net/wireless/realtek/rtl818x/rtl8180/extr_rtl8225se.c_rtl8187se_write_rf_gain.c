
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int* RF_GAIN_TABLE ;
 int mdelay (int) ;
 int rtl8187se_rf_writereg (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void rtl8187se_write_rf_gain(struct ieee80211_hw *dev)
{
 int i;

 for (i = 0; i <= 36; i++) {
  rtl8187se_rf_writereg(dev, 0x01, i); mdelay(1);
  rtl8187se_rf_writereg(dev, 0x02, RF_GAIN_TABLE[i]); mdelay(1);
 }
}
