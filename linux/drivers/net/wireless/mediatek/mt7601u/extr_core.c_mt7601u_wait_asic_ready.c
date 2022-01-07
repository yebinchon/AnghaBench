
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int state; } ;


 int EIO ;
 int MT7601U_STATE_REMOVED ;
 int MT_MAC_CSR0 ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int udelay (int) ;

int mt7601u_wait_asic_ready(struct mt7601u_dev *dev)
{
 int i = 100;
 u32 val;

 do {
  if (test_bit(MT7601U_STATE_REMOVED, &dev->state))
   return -EIO;

  val = mt7601u_rr(dev, MT_MAC_CSR0);
  if (val && ~val)
   return 0;

  udelay(10);
 } while (i--);

 return -EIO;
}
