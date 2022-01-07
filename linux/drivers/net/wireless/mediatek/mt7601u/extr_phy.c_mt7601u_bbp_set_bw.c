
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int bw; } ;


 int MT_BW_20 ;
 int MT_MAC_STATUS ;
 int MT_MAC_STATUS_RX ;
 int MT_MAC_STATUS_TX ;
 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_RX ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int mt7601u_bbp_rmc (struct mt7601u_dev*,int,int,int) ;
 int mt7601u_load_bbp_temp_table_bw (struct mt7601u_dev*) ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int mt76_poll (struct mt7601u_dev*,int ,int,int ,int) ;

int mt7601u_bbp_set_bw(struct mt7601u_dev *dev, int bw)
{
 u32 val, old;

 if (bw == dev->bw) {

  mt7601u_bbp_rmc(dev, 4, 0x18, bw == MT_BW_20 ? 0 : 0x10);

  return 0;
 }
 dev->bw = bw;


 old = mt7601u_rr(dev, MT_MAC_SYS_CTRL);
 val = old & ~(MT_MAC_SYS_CTRL_ENABLE_TX | MT_MAC_SYS_CTRL_ENABLE_RX);
 mt7601u_wr(dev, MT_MAC_SYS_CTRL, val);
 mt76_poll(dev, MT_MAC_STATUS, MT_MAC_STATUS_TX | MT_MAC_STATUS_RX,
    0, 500000);

 mt7601u_bbp_rmc(dev, 4, 0x18, bw == MT_BW_20 ? 0 : 0x10);

 mt7601u_wr(dev, MT_MAC_SYS_CTRL, old);

 return mt7601u_load_bbp_temp_table_bw(dev);
}
