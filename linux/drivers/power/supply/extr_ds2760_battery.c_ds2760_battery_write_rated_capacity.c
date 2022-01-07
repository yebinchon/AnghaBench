
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2760_device_info {unsigned char* raw; int dev; } ;


 int DS2760_EEPROM_BLOCK1 ;
 size_t DS2760_RATED_CAPACITY ;
 int w1_ds2760_recall_eeprom (int ,int ) ;
 int w1_ds2760_store_eeprom (int ,int ) ;
 int w1_ds2760_write (int ,unsigned char*,size_t,int) ;

__attribute__((used)) static void ds2760_battery_write_rated_capacity(struct ds2760_device_info *di,
      unsigned char rated_capacity)
{
 if (rated_capacity == di->raw[DS2760_RATED_CAPACITY])
  return;

 w1_ds2760_write(di->dev, &rated_capacity, DS2760_RATED_CAPACITY, 1);
 w1_ds2760_store_eeprom(di->dev, DS2760_EEPROM_BLOCK1);
 w1_ds2760_recall_eeprom(di->dev, DS2760_EEPROM_BLOCK1);
}
