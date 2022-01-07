
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int dev; int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; int phy_mutex; } ;


 int EINVAL ;
 int ENODEV ;
 int ETIMEDOUT ;
 int FIELD_PREP (int ,int) ;
 int MT76_REMOVED ;
 int MT_RF_BANK (int ) ;
 int MT_RF_CSR_CFG ;
 int MT_RF_CSR_CFG_DATA ;
 int MT_RF_CSR_CFG_KICK ;
 int MT_RF_CSR_CFG_REG_BANK ;
 int MT_RF_CSR_CFG_REG_ID ;
 int MT_RF_CSR_CFG_WR ;
 int MT_RF_REG (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int dev_err (int ,char*,int,int,int) ;
 int mt76_poll (struct mt76x02_dev*,int ,int,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
mt76x0_rf_csr_wr(struct mt76x02_dev *dev, u32 offset, u8 value)
{
 int ret = 0;
 u8 bank, reg;

 if (test_bit(MT76_REMOVED, &dev->mt76.state))
  return -ENODEV;

 bank = MT_RF_BANK(offset);
 reg = MT_RF_REG(offset);

 if (WARN_ON_ONCE(reg > 127) || WARN_ON_ONCE(bank > 8))
  return -EINVAL;

 mutex_lock(&dev->phy_mutex);

 if (!mt76_poll(dev, MT_RF_CSR_CFG, MT_RF_CSR_CFG_KICK, 0, 100)) {
  ret = -ETIMEDOUT;
  goto out;
 }

 mt76_wr(dev, MT_RF_CSR_CFG,
  FIELD_PREP(MT_RF_CSR_CFG_DATA, value) |
  FIELD_PREP(MT_RF_CSR_CFG_REG_BANK, bank) |
  FIELD_PREP(MT_RF_CSR_CFG_REG_ID, reg) |
  MT_RF_CSR_CFG_WR |
  MT_RF_CSR_CFG_KICK);

out:
 mutex_unlock(&dev->phy_mutex);

 if (ret < 0)
  dev_err(dev->mt76.dev, "Error: RF write %d:%d failed:%d!!\n",
   bank, reg, ret);

 return ret;
}
