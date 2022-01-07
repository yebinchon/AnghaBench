
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bq24190_dev_info {int dev; } ;


 int BQ24190_REG_POC ;
 int BQ24190_REG_POC_RESET_MASK ;
 int BQ24190_REG_POC_RESET_SHIFT ;
 int EIO ;
 int bq24190_read_mask (struct bq24190_dev_info*,int ,int ,int ,scalar_t__*) ;
 int bq24190_write_mask (struct bq24190_dev_info*,int ,int ,int ,int) ;
 scalar_t__ device_property_read_bool (int ,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bq24190_register_reset(struct bq24190_dev_info *bdi)
{
 int ret, limit = 100;
 u8 v;
 if (device_property_read_bool(bdi->dev, "disable-reset"))
  return 0;


 ret = bq24190_write_mask(bdi, BQ24190_REG_POC,
   BQ24190_REG_POC_RESET_MASK,
   BQ24190_REG_POC_RESET_SHIFT,
   0x1);
 if (ret < 0)
  return ret;


 do {
  ret = bq24190_read_mask(bdi, BQ24190_REG_POC,
    BQ24190_REG_POC_RESET_MASK,
    BQ24190_REG_POC_RESET_SHIFT,
    &v);
  if (ret < 0)
   return ret;

  if (v == 0)
   return 0;

  usleep_range(100, 200);
 } while (--limit);

 return -EIO;
}
