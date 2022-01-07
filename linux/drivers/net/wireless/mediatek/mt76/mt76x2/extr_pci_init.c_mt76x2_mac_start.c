
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int aggr_stats; } ;


 int MT_TX_AGG_CNT (int) ;
 int MT_TX_STAT_FIFO ;
 int memset (int ,int ,int) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76x02_mac_start (struct mt76x02_dev*) ;

int mt76x2_mac_start(struct mt76x02_dev *dev)
{
 int i;

 for (i = 0; i < 16; i++)
  mt76_rr(dev, MT_TX_AGG_CNT(i));

 for (i = 0; i < 16; i++)
  mt76_rr(dev, MT_TX_STAT_FIFO);

 memset(dev->aggr_stats, 0, sizeof(dev->aggr_stats));
 mt76x02_mac_start(dev);

 return 0;
}
