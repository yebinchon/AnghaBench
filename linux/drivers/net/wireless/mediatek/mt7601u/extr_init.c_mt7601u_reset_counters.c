
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int MT_RX_STA_CNT0 ;
 int MT_RX_STA_CNT1 ;
 int MT_RX_STA_CNT2 ;
 int MT_TX_STA_CNT0 ;
 int MT_TX_STA_CNT1 ;
 int MT_TX_STA_CNT2 ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;

__attribute__((used)) static void mt7601u_reset_counters(struct mt7601u_dev *dev)
{
 mt7601u_rr(dev, MT_RX_STA_CNT0);
 mt7601u_rr(dev, MT_RX_STA_CNT1);
 mt7601u_rr(dev, MT_RX_STA_CNT2);
 mt7601u_rr(dev, MT_TX_STA_CNT0);
 mt7601u_rr(dev, MT_TX_STA_CNT1);
 mt7601u_rr(dev, MT_TX_STA_CNT2);
}
