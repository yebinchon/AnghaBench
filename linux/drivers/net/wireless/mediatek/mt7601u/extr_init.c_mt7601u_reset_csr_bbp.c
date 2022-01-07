
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_RESET_BBP ;
 int MT_MAC_SYS_CTRL_RESET_CSR ;
 int MT_USB_DMA_CFG ;
 int msleep (int) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;

__attribute__((used)) static void mt7601u_reset_csr_bbp(struct mt7601u_dev *dev)
{
 mt7601u_wr(dev, MT_MAC_SYS_CTRL, (MT_MAC_SYS_CTRL_RESET_CSR |
       MT_MAC_SYS_CTRL_RESET_BBP));
 mt7601u_wr(dev, MT_USB_DMA_CFG, 0);
 msleep(1);
 mt7601u_wr(dev, MT_MAC_SYS_CTRL, 0);
}
