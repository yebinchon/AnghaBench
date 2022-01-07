
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dev; int reg_atomic_mutex; int state; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int FIELD_PREP (int ,int) ;
 int MT7601U_STATE_REMOVED ;
 int MT7601U_STATE_WLAN_RUNNING ;
 int MT_RF_CSR_CFG ;
 int MT_RF_CSR_CFG_DATA ;
 int MT_RF_CSR_CFG_KICK ;
 int MT_RF_CSR_CFG_REG_BANK ;
 int MT_RF_CSR_CFG_REG_ID ;
 int MT_RF_CSR_CFG_WR ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,int,int,int) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int mt76_poll (struct mt7601u_dev*,int ,int,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_rf_write (struct mt7601u_dev*,int,int,int) ;

__attribute__((used)) static int
mt7601u_rf_wr(struct mt7601u_dev *dev, u8 bank, u8 offset, u8 value)
{
 int ret = 0;

 if (WARN_ON(!test_bit(MT7601U_STATE_WLAN_RUNNING, &dev->state)) ||
     WARN_ON(offset > 63))
  return -EINVAL;
 if (test_bit(MT7601U_STATE_REMOVED, &dev->state))
  return 0;

 mutex_lock(&dev->reg_atomic_mutex);

 if (!mt76_poll(dev, MT_RF_CSR_CFG, MT_RF_CSR_CFG_KICK, 0, 100)) {
  ret = -ETIMEDOUT;
  goto out;
 }

 mt7601u_wr(dev, MT_RF_CSR_CFG,
     FIELD_PREP(MT_RF_CSR_CFG_DATA, value) |
     FIELD_PREP(MT_RF_CSR_CFG_REG_BANK, bank) |
     FIELD_PREP(MT_RF_CSR_CFG_REG_ID, offset) |
     MT_RF_CSR_CFG_WR |
     MT_RF_CSR_CFG_KICK);
 trace_rf_write(dev, bank, offset, value);
out:
 mutex_unlock(&dev->reg_atomic_mutex);

 if (ret < 0)
  dev_err(dev->dev, "Error: RF write %02hhx:%02hhx failed:%d!!\n",
   bank, offset, ret);

 return ret;
}
