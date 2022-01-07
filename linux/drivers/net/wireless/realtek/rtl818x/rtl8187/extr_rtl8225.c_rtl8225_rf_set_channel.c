
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl8187_priv {TYPE_3__* rf; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct TYPE_6__ {scalar_t__ init; } ;
struct TYPE_4__ {int center_freq; } ;


 int ieee80211_frequency_to_channel (int ) ;
 int msleep (int) ;
 int * rtl8225_chan ;
 scalar_t__ rtl8225_rf_init ;
 int rtl8225_rf_set_tx_power (struct ieee80211_hw*,int) ;
 int rtl8225_write (struct ieee80211_hw*,int,int ) ;
 int rtl8225z2_b_rf_set_tx_power (struct ieee80211_hw*,int) ;
 scalar_t__ rtl8225z2_rf_init ;
 int rtl8225z2_rf_set_tx_power (struct ieee80211_hw*,int) ;

__attribute__((used)) static void rtl8225_rf_set_channel(struct ieee80211_hw *dev,
       struct ieee80211_conf *conf)
{
 struct rtl8187_priv *priv = dev->priv;
 int chan =
  ieee80211_frequency_to_channel(conf->chandef.chan->center_freq);

 if (priv->rf->init == rtl8225_rf_init)
  rtl8225_rf_set_tx_power(dev, chan);
 else if (priv->rf->init == rtl8225z2_rf_init)
  rtl8225z2_rf_set_tx_power(dev, chan);
 else
  rtl8225z2_b_rf_set_tx_power(dev, chan);

 rtl8225_write(dev, 0x7, rtl8225_chan[chan - 1]);
 msleep(10);
}
