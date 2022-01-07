
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt7601u_dev {int dev; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int MT_EE_PHYSICAL_READ ;
 int MT_EE_USAGE_MAP_START ;
 int MT_EFUSE_USAGE_MAP_SIZE ;
 int dev_err (int ,char*) ;
 int mt7601u_efuse_read (struct mt7601u_dev*,int,int *,int ) ;
 int round_up (int,int) ;

__attribute__((used)) static int
mt7601u_efuse_physical_size_check(struct mt7601u_dev *dev)
{
 const int map_reads = DIV_ROUND_UP(MT_EFUSE_USAGE_MAP_SIZE, 16);
 u8 data[round_up(MT_EFUSE_USAGE_MAP_SIZE, 16)];
 int ret, i;
 u32 start = 0, end = 0, cnt_free;

 for (i = 0; i < map_reads; i++) {
  ret = mt7601u_efuse_read(dev, MT_EE_USAGE_MAP_START + i * 16,
      data + i * 16, MT_EE_PHYSICAL_READ);
  if (ret)
   return ret;
 }

 for (i = 0; i < MT_EFUSE_USAGE_MAP_SIZE; i++)
  if (!data[i]) {
   if (!start)
    start = MT_EE_USAGE_MAP_START + i;
   end = MT_EE_USAGE_MAP_START + i;
  }
 cnt_free = end - start + 1;

 if (MT_EFUSE_USAGE_MAP_SIZE - cnt_free < 5) {
  dev_err(dev->dev, "Error: your device needs default EEPROM file and this driver doesn't support it!\n");
  return -EINVAL;
 }

 return 0;
}
