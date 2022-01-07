
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
struct TYPE_4__ {void* data; int size; } ;
struct TYPE_6__ {TYPE_2__ eeprom; TYPE_1__ otp; int dev; } ;
struct mt76x02_dev {TYPE_3__ mt76; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MT7662_EEPROM_SIZE ;
 int MT_EE_READ ;
 void* devm_kzalloc (int ,int ,int ) ;
 int memcpy (int ,void*,int ) ;
 int mt76_eeprom_init (TYPE_3__*,int ) ;
 scalar_t__ mt76x02_get_efuse_data (struct mt76x02_dev*,int ,void*,int ,int ) ;
 int mt76x2_apply_cal_free_data (struct mt76x02_dev*,void*) ;
 int mt76x2_check_eeprom (struct mt76x02_dev*) ;

__attribute__((used)) static int
mt76x2_eeprom_load(struct mt76x02_dev *dev)
{
 void *efuse;
 bool found;
 int ret;

 ret = mt76_eeprom_init(&dev->mt76, MT7662_EEPROM_SIZE);
 if (ret < 0)
  return ret;

 found = ret;
 if (found)
  found = !mt76x2_check_eeprom(dev);

 dev->mt76.otp.data = devm_kzalloc(dev->mt76.dev, MT7662_EEPROM_SIZE,
       GFP_KERNEL);
 dev->mt76.otp.size = MT7662_EEPROM_SIZE;
 if (!dev->mt76.otp.data)
  return -ENOMEM;

 efuse = dev->mt76.otp.data;

 if (mt76x02_get_efuse_data(dev, 0, efuse, MT7662_EEPROM_SIZE,
       MT_EE_READ))
  goto out;

 if (found) {
  mt76x2_apply_cal_free_data(dev, efuse);
 } else {

  found = 1;
  memcpy(dev->mt76.eeprom.data, efuse, MT7662_EEPROM_SIZE);
 }

out:
 if (!found)
  return -ENOENT;

 return 0;
}
