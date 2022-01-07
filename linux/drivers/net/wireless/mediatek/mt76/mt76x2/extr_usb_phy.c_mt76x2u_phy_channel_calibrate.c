
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int channel_cal_done; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_3__ cal; TYPE_2__ mt76; } ;
struct ieee80211_channel {scalar_t__ band; } ;


 int MCU_CAL_LC ;
 int MCU_CAL_RXIQC_FI ;
 int MCU_CAL_TEMP_SENSOR ;
 int MCU_CAL_TXIQ ;
 int MCU_CAL_TX_LOFT ;
 int MCU_CAL_TX_SHAPING ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int mt76x02_edcca_init (struct mt76x02_dev*) ;
 int mt76x02_mcu_calibrate (struct mt76x02_dev*,int ,int) ;
 int mt76x2_apply_gain_adj (struct mt76x02_dev*) ;
 scalar_t__ mt76x2_channel_silent (struct mt76x02_dev*) ;
 int mt76x2_mac_resume (struct mt76x02_dev*) ;
 int mt76x2u_mac_stop (struct mt76x02_dev*) ;

__attribute__((used)) static void
mt76x2u_phy_channel_calibrate(struct mt76x02_dev *dev, bool mac_stopped)
{
 struct ieee80211_channel *chan = dev->mt76.chandef.chan;
 bool is_5ghz = chan->band == NL80211_BAND_5GHZ;

 if (dev->cal.channel_cal_done)
  return;

 if (mt76x2_channel_silent(dev))
  return;

 if (!mac_stopped)
  mt76x2u_mac_stop(dev);

 if (is_5ghz)
  mt76x02_mcu_calibrate(dev, MCU_CAL_LC, 0);

 mt76x02_mcu_calibrate(dev, MCU_CAL_TX_LOFT, is_5ghz);
 mt76x02_mcu_calibrate(dev, MCU_CAL_TXIQ, is_5ghz);
 mt76x02_mcu_calibrate(dev, MCU_CAL_RXIQC_FI, is_5ghz);
 mt76x02_mcu_calibrate(dev, MCU_CAL_TEMP_SENSOR, 0);
 mt76x02_mcu_calibrate(dev, MCU_CAL_TX_SHAPING, 0);

 if (!mac_stopped)
  mt76x2_mac_resume(dev);
 mt76x2_apply_gain_adj(dev);
 mt76x02_edcca_init(dev);

 dev->cal.channel_cal_done = 1;
}
