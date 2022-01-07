
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct mt76_reg_pair {int reg; int value; } ;


 int MT76_STATE_MCU_RUNNING ;
 int MT_MCU_MEMMAP_RF ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ mt76_is_usb (struct mt76x02_dev*) ;
 int mt76_rd_rp (struct mt76x02_dev*,int ,struct mt76_reg_pair*,int) ;
 int mt76x0_rf_csr_rr (struct mt76x02_dev*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mt76x0_rf_rr(struct mt76x02_dev *dev, u32 offset)
{
 int ret;
 u32 val;

 if (mt76_is_usb(dev)) {
  struct mt76_reg_pair pair = {
   .reg = offset,
  };

  WARN_ON_ONCE(!test_bit(MT76_STATE_MCU_RUNNING,
           &dev->mt76.state));
  ret = mt76_rd_rp(dev, MT_MCU_MEMMAP_RF, &pair, 1);
  val = pair.value;
 } else {
  ret = val = mt76x0_rf_csr_rr(dev, offset);
 }

 return (ret < 0) ? ret : val;
}
