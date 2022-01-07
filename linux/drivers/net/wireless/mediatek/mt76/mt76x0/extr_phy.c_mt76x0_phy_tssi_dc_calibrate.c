
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int tssi_dc; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_3__ cal; TYPE_2__ mt76; } ;
struct ieee80211_channel {scalar_t__ band; } ;


 int BIT (int) ;
 int CORE ;
 int MT_BBP (int ,int) ;
 int MT_RF (int ,int) ;
 int MT_RF_BYPASS_0 ;
 int MT_RF_SETTING_0 ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int TXBE ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76_poll_msec (struct mt76x02_dev*,int ,int,int ,int) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_set (struct mt76x02_dev*,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x0_rf_clear (struct mt76x02_dev*,int ,int) ;
 int mt76x0_rf_rmw (struct mt76x02_dev*,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt76x0_phy_tssi_dc_calibrate(struct mt76x02_dev *dev)
{
 struct ieee80211_channel *chan = dev->mt76.chandef.chan;
 u32 val;

 if (chan->band == NL80211_BAND_5GHZ)
  mt76x0_rf_clear(dev, MT_RF(0, 67), 0xf);


 mt76_wr(dev, MT_RF_SETTING_0, 0x60002237);
 mt76_wr(dev, MT_RF_BYPASS_0, 0xffffffff);


 mt76_set(dev, MT_BBP(CORE, 4), BIT(0));
 usleep_range(500, 1000);
 mt76_clear(dev, MT_BBP(CORE, 4), BIT(0));

 val = (chan->band == NL80211_BAND_5GHZ) ? 0x80055 : 0x80050;
 mt76_wr(dev, MT_BBP(CORE, 34), val);


 mt76_wr(dev, MT_BBP(TXBE, 6), BIT(31));

 mt76_poll_msec(dev, MT_BBP(CORE, 34), BIT(4), 0, 200);
 dev->cal.tssi_dc = mt76_rr(dev, MT_BBP(CORE, 35)) & 0xff;


 mt76_wr(dev, MT_RF_BYPASS_0, 0);

 mt76_wr(dev, MT_BBP(TXBE, 6), 0);

 mt76_set(dev, MT_BBP(CORE, 4), BIT(0));
 usleep_range(500, 1000);
 mt76_clear(dev, MT_BBP(CORE, 4), BIT(0));

 if (chan->band == NL80211_BAND_5GHZ)
  mt76x0_rf_rmw(dev, MT_RF(0, 67), 0xf, 0x4);
}
