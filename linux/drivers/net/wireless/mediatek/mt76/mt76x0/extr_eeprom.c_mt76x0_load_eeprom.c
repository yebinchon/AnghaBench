
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ eeprom; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;


 int MT76X0_EEPROM_SIZE ;
 int MT_EE_READ ;
 int mt76_eeprom_init (TYPE_2__*,int ) ;
 int mt76x02_get_efuse_data (struct mt76x02_dev*,int ,int ,int ,int ) ;
 int mt76x0_check_eeprom (struct mt76x02_dev*) ;
 int mt76x0_efuse_physical_size_check (struct mt76x02_dev*) ;

__attribute__((used)) static int mt76x0_load_eeprom(struct mt76x02_dev *dev)
{
 int found;

 found = mt76_eeprom_init(&dev->mt76, MT76X0_EEPROM_SIZE);
 if (found < 0)
  return found;

 if (found && !mt76x0_check_eeprom(dev))
  return 0;

 found = mt76x0_efuse_physical_size_check(dev);
 if (found < 0)
  return found;

 return mt76x02_get_efuse_data(dev, 0, dev->mt76.eeprom.data,
          MT76X0_EEPROM_SIZE, MT_EE_READ);
}
