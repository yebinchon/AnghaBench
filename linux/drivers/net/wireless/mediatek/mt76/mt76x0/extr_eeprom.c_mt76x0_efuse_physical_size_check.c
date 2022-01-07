
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
typedef int data ;


 int EINVAL ;
 int MT_EE_PHYSICAL_READ ;
 int MT_EE_USAGE_MAP_START ;
 int MT_EFUSE_USAGE_MAP_SIZE ;
 int MT_MAP_READS ;
 int dev_err (int ,char*) ;
 int mt76x02_get_efuse_data (struct mt76x02_dev*,int,int *,int,int ) ;

__attribute__((used)) static int
mt76x0_efuse_physical_size_check(struct mt76x02_dev *dev)
{
 u8 data[MT_MAP_READS * 16];
 int ret, i;
 u32 start = 0, end = 0, cnt_free;

 ret = mt76x02_get_efuse_data(dev, MT_EE_USAGE_MAP_START, data,
         sizeof(data), MT_EE_PHYSICAL_READ);
 if (ret)
  return ret;

 for (i = 0; i < MT_EFUSE_USAGE_MAP_SIZE; i++)
  if (!data[i]) {
   if (!start)
    start = MT_EE_USAGE_MAP_START + i;
   end = MT_EE_USAGE_MAP_START + i;
  }
 cnt_free = end - start + 1;

 if (MT_EFUSE_USAGE_MAP_SIZE - cnt_free < 5) {
  dev_err(dev->mt76.dev,
   "driver does not support default EEPROM\n");
  return -EINVAL;
 }

 return 0;
}
