
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2781_device_info {int w1_dev; } ;


 int ds2781_recall_eeprom (int ,int) ;
 int ds2781_store_eeprom (int ,int) ;

__attribute__((used)) static int ds2781_save_eeprom(struct ds2781_device_info *dev_info, int reg)
{
 int ret;

 ret = ds2781_store_eeprom(dev_info->w1_dev, reg);
 if (ret < 0)
  return ret;

 ret = ds2781_recall_eeprom(dev_info->w1_dev, reg);
 if (ret < 0)
  return ret;

 return 0;
}
