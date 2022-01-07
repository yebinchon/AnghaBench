
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_RESET_BBP ;
 int MT_MAC_SYS_CTRL_RESET_CSR ;
 int msleep (int) ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void mt76x0_reset_csr_bbp(struct mt76x02_dev *dev)
{
 mt76_wr(dev, MT_MAC_SYS_CTRL,
  MT_MAC_SYS_CTRL_RESET_CSR |
  MT_MAC_SYS_CTRL_RESET_BBP);
 msleep(200);
 mt76_clear(dev, MT_MAC_SYS_CTRL,
     MT_MAC_SYS_CTRL_RESET_CSR |
     MT_MAC_SYS_CTRL_RESET_BBP);
}
