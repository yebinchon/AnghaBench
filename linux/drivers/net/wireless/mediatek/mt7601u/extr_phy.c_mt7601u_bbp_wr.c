
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int reg_atomic_mutex; int dev; int state; } ;


 int FIELD_PREP (int ,int ) ;
 int MT7601U_STATE_REMOVED ;
 int MT7601U_STATE_WLAN_RUNNING ;
 int MT_BBP_CSR_CFG ;
 int MT_BBP_CSR_CFG_BUSY ;
 int MT_BBP_CSR_CFG_REG_NUM ;
 int MT_BBP_CSR_CFG_RW_MODE ;
 int MT_BBP_CSR_CFG_VAL ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,int ) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int mt76_poll (struct mt7601u_dev*,int ,int,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_bbp_write (struct mt7601u_dev*,int ,int ) ;

__attribute__((used)) static void mt7601u_bbp_wr(struct mt7601u_dev *dev, u8 offset, u8 val)
{
 if (WARN_ON(!test_bit(MT7601U_STATE_WLAN_RUNNING, &dev->state)) ||
     test_bit(MT7601U_STATE_REMOVED, &dev->state))
  return;

 mutex_lock(&dev->reg_atomic_mutex);

 if (!mt76_poll(dev, MT_BBP_CSR_CFG, MT_BBP_CSR_CFG_BUSY, 0, 1000)) {
  dev_err(dev->dev, "Error: BBP write %02hhx failed!!\n", offset);
  goto out;
 }

 mt7601u_wr(dev, MT_BBP_CSR_CFG,
     FIELD_PREP(MT_BBP_CSR_CFG_VAL, val) |
     FIELD_PREP(MT_BBP_CSR_CFG_REG_NUM, offset) |
     MT_BBP_CSR_CFG_RW_MODE | MT_BBP_CSR_CFG_BUSY);
 trace_bbp_write(dev, offset, val);
out:
 mutex_unlock(&dev->reg_atomic_mutex);
}
