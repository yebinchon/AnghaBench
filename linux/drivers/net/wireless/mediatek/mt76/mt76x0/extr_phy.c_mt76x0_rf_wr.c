
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct mt76_reg_pair {int value; int reg; } ;


 int MT76_STATE_MCU_RUNNING ;
 int MT_MCU_MEMMAP_RF ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ mt76_is_usb (struct mt76x02_dev*) ;
 int mt76_wr_rp (struct mt76x02_dev*,int ,struct mt76_reg_pair*,int) ;
 int mt76x0_rf_csr_wr (struct mt76x02_dev*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
mt76x0_rf_wr(struct mt76x02_dev *dev, u32 offset, u8 val)
{
 if (mt76_is_usb(dev)) {
  struct mt76_reg_pair pair = {
   .reg = offset,
   .value = val,
  };

  WARN_ON_ONCE(!test_bit(MT76_STATE_MCU_RUNNING,
           &dev->mt76.state));
  return mt76_wr_rp(dev, MT_MCU_MEMMAP_RF, &pair, 1);
 } else {
  return mt76x0_rf_csr_wr(dev, offset, val);
 }
}
