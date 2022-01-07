
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {struct ieee80211_channel* chan; } ;
struct TYPE_4__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct ieee80211_channel {scalar_t__ band; } ;
typedef int s16 ;


 int BIT (int) ;
 int CORE ;
 int ETIMEDOUT ;
 int MT_BBP (int ,int) ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int mt76_clear (struct mt76x02_dev*,int ,int ) ;
 int mt76_poll_msec (struct mt76x02_dev*,int ,int ,int ,int) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static int
mt76x0_phy_tssi_adc_calibrate(struct mt76x02_dev *dev, s16 *ltssi,
         u8 *info)
{
 struct ieee80211_channel *chan = dev->mt76.chandef.chan;
 u32 val;

 val = (chan->band == NL80211_BAND_5GHZ) ? 0x80055 : 0x80050;
 mt76_wr(dev, MT_BBP(CORE, 34), val);

 if (!mt76_poll_msec(dev, MT_BBP(CORE, 34), BIT(4), 0, 200)) {
  mt76_clear(dev, MT_BBP(CORE, 34), BIT(4));
  return -ETIMEDOUT;
 }

 *ltssi = mt76_rr(dev, MT_BBP(CORE, 35)) & 0xff;
 if (chan->band == NL80211_BAND_5GHZ)
  *ltssi += 128;


 mt76_wr(dev, MT_BBP(CORE, 34), 0x80041);
 info[0] = mt76_rr(dev, MT_BBP(CORE, 35)) & 0xff;


 mt76_wr(dev, MT_BBP(CORE, 34), 0x80042);
 info[1] = mt76_rr(dev, MT_BBP(CORE, 35)) & 0xff;


 mt76_wr(dev, MT_BBP(CORE, 34), 0x80043);
 info[2] = mt76_rr(dev, MT_BBP(CORE, 35)) & 0xff;

 return 0;
}
