
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int FIELD_PREP (int,int) ;
 int MT_BEACON_TIME_CFG ;
 int MT_BEACON_TIME_CFG_INTVAL ;
 int MT_BEACON_TIME_CFG_SYNC_MODE ;
 int MT_BEACON_TIME_CFG_TBTT_EN ;
 int MT_BEACON_TIME_CFG_TIMER_EN ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;

void mt7601u_mac_config_tsf(struct mt7601u_dev *dev, bool enable, int interval)
{
 u32 val = mt7601u_rr(dev, MT_BEACON_TIME_CFG);

 val &= ~(MT_BEACON_TIME_CFG_TIMER_EN |
   MT_BEACON_TIME_CFG_SYNC_MODE |
   MT_BEACON_TIME_CFG_TBTT_EN);

 if (!enable) {
  mt7601u_wr(dev, MT_BEACON_TIME_CFG, val);
  return;
 }

 val &= ~MT_BEACON_TIME_CFG_INTVAL;
 val |= FIELD_PREP(MT_BEACON_TIME_CFG_INTVAL, interval << 4) |
  MT_BEACON_TIME_CFG_TIMER_EN |
  MT_BEACON_TIME_CFG_SYNC_MODE |
  MT_BEACON_TIME_CFG_TBTT_EN;
}
