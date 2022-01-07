
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_RX ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int MT_RX_FILTR_CFG ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_wait_for_wpdma (TYPE_1__*,int) ;
 int mt76x2u_mac_reset_counters (struct mt76x02_dev*) ;
 int usleep_range (int,int) ;

int mt76x2u_mac_start(struct mt76x02_dev *dev)
{
 mt76x2u_mac_reset_counters(dev);

 mt76_wr(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_TX);
 mt76x02_wait_for_wpdma(&dev->mt76, 1000);
 usleep_range(50, 100);

 mt76_wr(dev, MT_RX_FILTR_CFG, dev->mt76.rxfilter);

 mt76_wr(dev, MT_MAC_SYS_CTRL,
  MT_MAC_SYS_CTRL_ENABLE_TX |
  MT_MAC_SYS_CTRL_ENABLE_RX);

 return 0;
}
