
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_RX_STAT_0 ;
 int MT_RX_STAT_1 ;
 int MT_RX_STAT_2 ;
 int MT_TX_STA_0 ;
 int MT_TX_STA_1 ;
 int MT_TX_STA_2 ;
 int mt76_rr (struct mt76x02_dev*,int ) ;

__attribute__((used)) static void mt76x0_reset_counters(struct mt76x02_dev *dev)
{
 mt76_rr(dev, MT_RX_STAT_0);
 mt76_rr(dev, MT_RX_STAT_1);
 mt76_rr(dev, MT_RX_STAT_2);
 mt76_rr(dev, MT_TX_STA_0);
 mt76_rr(dev, MT_TX_STA_1);
 mt76_rr(dev, MT_TX_STA_2);
}
