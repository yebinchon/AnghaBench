
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dev; } ;


 int BIT (int) ;
 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_RESET_CSR ;
 int dev_err (int ,char*) ;
 int mt7601u_rr (struct mt7601u_dev*,int) ;
 int mt76_clear (struct mt7601u_dev*,int ,int ) ;
 int mt76_set (struct mt7601u_dev*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void mt7601u_check_mac_err(struct mt7601u_dev *dev)
{
 u32 val = mt7601u_rr(dev, 0x10f4);

 if (!(val & BIT(29)) || !(val & (BIT(7) | BIT(5))))
  return;

 dev_err(dev->dev, "Error: MAC specific condition occurred\n");

 mt76_set(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_RESET_CSR);
 udelay(10);
 mt76_clear(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_RESET_CSR);
}
