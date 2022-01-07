
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int BIT (int) ;
 int CORE ;
 int IBI ;
 int MT_BBP (int ,int) ;
 int MT_MAC_STATUS ;
 int MT_MAC_STATUS_RX ;
 int MT_MAC_STATUS_TX ;
 int MT_MAC_SYS_CTRL ;
 int MT_TXOP_CTRL_CFG ;
 int MT_TXOP_ED_CCA_EN ;
 int MT_TXOP_HLDR_ET ;
 int MT_TXOP_HLDR_TX40M_BLK_EN ;
 int MT_TX_RTS_CFG ;
 int MT_TX_RTS_CFG_RETRY_LIMIT ;
 int mt76_clear (struct mt76x02_dev*,int ,int ) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_set (struct mt76x02_dev*,int ,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int udelay (int) ;

void mt76x2_mac_stop(struct mt76x02_dev *dev, bool force)
{
 bool stopped = 0;
 u32 rts_cfg;
 int i;

 mt76_clear(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);
 mt76_clear(dev, MT_TXOP_HLDR_ET, MT_TXOP_HLDR_TX40M_BLK_EN);

 mt76_wr(dev, MT_MAC_SYS_CTRL, 0);

 rts_cfg = mt76_rr(dev, MT_TX_RTS_CFG);
 mt76_wr(dev, MT_TX_RTS_CFG, rts_cfg & ~MT_TX_RTS_CFG_RETRY_LIMIT);


 for (i = 0; i < 300; i++) {
  if ((mt76_rr(dev, MT_MAC_STATUS) &
       (MT_MAC_STATUS_RX | MT_MAC_STATUS_TX)) ||
      mt76_rr(dev, MT_BBP(IBI, 12))) {
   udelay(1);
   continue;
  }

  stopped = 1;
  break;
 }

 if (force && !stopped) {
  mt76_set(dev, MT_BBP(CORE, 4), BIT(1));
  mt76_clear(dev, MT_BBP(CORE, 4), BIT(1));

  mt76_set(dev, MT_BBP(CORE, 4), BIT(0));
  mt76_clear(dev, MT_BBP(CORE, 4), BIT(0));
 }

 mt76_wr(dev, MT_TX_RTS_CFG, rts_cfg);
}
