
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mt76x2_tx_power_info {TYPE_3__* chain; } ;
struct mt76x2_tssi_comp {int cal_mode; int pa_mode; int offset1; int slope1; int offset0; int slope0; } ;
struct TYPE_8__ {int tssi_comp_pending; int dpd_cal_done; int tssi_cal_done; } ;
struct TYPE_5__ {struct ieee80211_channel* chan; } ;
struct TYPE_6__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_4__ cal; scalar_t__ ed_tx_blocked; TYPE_2__ mt76; } ;
struct ieee80211_channel {int hw_value; int band; } ;
struct TYPE_7__ {int tssi_offset; int tssi_slope; } ;


 int BIT (int) ;
 int CORE ;
 int MCU_CAL_DPD ;
 int MT_BBP (int ,int) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 scalar_t__ mt76x02_ext_pa_enabled (struct mt76x02_dev*,int ) ;
 int mt76x02_mcu_calibrate (struct mt76x02_dev*,int ,int ) ;
 int mt76x2_get_power_info (struct mt76x02_dev*,struct mt76x2_tx_power_info*,struct ieee80211_channel*) ;
 int mt76x2_mcu_tssi_comp (struct mt76x02_dev*,struct mt76x2_tssi_comp*) ;
 int usleep_range (int,int) ;

void mt76x2_phy_tssi_compensate(struct mt76x02_dev *dev)
{
 struct ieee80211_channel *chan = dev->mt76.chandef.chan;
 struct mt76x2_tx_power_info txp;
 struct mt76x2_tssi_comp t = {};

 if (!dev->cal.tssi_cal_done)
  return;

 if (!dev->cal.tssi_comp_pending) {

  t.cal_mode = BIT(0);
  mt76x2_mcu_tssi_comp(dev, &t);
  dev->cal.tssi_comp_pending = 1;
 } else {
  if (mt76_rr(dev, MT_BBP(CORE, 34)) & BIT(4))
   return;

  dev->cal.tssi_comp_pending = 0;
  mt76x2_get_power_info(dev, &txp, chan);

  if (mt76x02_ext_pa_enabled(dev, chan->band))
   t.pa_mode = 1;

  t.cal_mode = BIT(1);
  t.slope0 = txp.chain[0].tssi_slope;
  t.offset0 = txp.chain[0].tssi_offset;
  t.slope1 = txp.chain[1].tssi_slope;
  t.offset1 = txp.chain[1].tssi_offset;
  mt76x2_mcu_tssi_comp(dev, &t);

  if (t.pa_mode || dev->cal.dpd_cal_done || dev->ed_tx_blocked)
   return;

  usleep_range(10000, 20000);
  mt76x02_mcu_calibrate(dev, MCU_CAL_DPD, chan->hw_value);
  dev->cal.dpd_cal_done = 1;
 }
}
