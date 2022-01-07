
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int MT_PBF_RX_MAX_PCNT ;
 int MT_PBF_SYS_CTRL ;
 int MT_PBF_SYS_CTRL_ASY_RESET ;
 int MT_PBF_SYS_CTRL_DMA_RESET ;
 int MT_PBF_SYS_CTRL_MAC_RESET ;
 int MT_PBF_SYS_CTRL_MCU_RESET ;
 int MT_PBF_SYS_CTRL_PBF_RESET ;
 int MT_PBF_TX_MAX_PCNT ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void
mt76x2_mac_pbf_init(struct mt76x02_dev *dev)
{
 u32 val;

 val = MT_PBF_SYS_CTRL_MCU_RESET |
       MT_PBF_SYS_CTRL_DMA_RESET |
       MT_PBF_SYS_CTRL_MAC_RESET |
       MT_PBF_SYS_CTRL_PBF_RESET |
       MT_PBF_SYS_CTRL_ASY_RESET;

 mt76_set(dev, MT_PBF_SYS_CTRL, val);
 mt76_clear(dev, MT_PBF_SYS_CTRL, val);

 mt76_wr(dev, MT_PBF_TX_MAX_PCNT, 0xefef3f1f);
 mt76_wr(dev, MT_PBF_RX_MAX_PCNT, 0xfebf);
}
