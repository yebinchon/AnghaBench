
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int MT_TX_PWR_CFG_1 ;
 int MT_TX_PWR_CFG_2 ;
 int MT_TX_PWR_CFG_4 ;
 int MT_TX_PWR_CFG_7 ;
 int MT_TX_PWR_CFG_9 ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;

__attribute__((used)) static void
mt7601u_extra_power_over_mac(struct mt7601u_dev *dev)
{
 u32 val;

 val = ((mt7601u_rr(dev, MT_TX_PWR_CFG_1) & 0x0000ff00) >> 8);
 val |= ((mt7601u_rr(dev, MT_TX_PWR_CFG_2) & 0x0000ff00) << 8);
 mt7601u_wr(dev, MT_TX_PWR_CFG_7, val);

 val = ((mt7601u_rr(dev, MT_TX_PWR_CFG_4) & 0x0000ff00) >> 8);
 mt7601u_wr(dev, MT_TX_PWR_CFG_9, val);
}
