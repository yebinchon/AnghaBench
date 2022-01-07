
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_RX ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static inline void mt76x2_mac_resume(struct mt76x02_dev *dev)
{
 mt76_wr(dev, MT_MAC_SYS_CTRL,
  MT_MAC_SYS_CTRL_ENABLE_TX |
  MT_MAC_SYS_CTRL_ENABLE_RX);
}
