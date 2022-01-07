
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tps6598x {int regmap; int i2c_protocol; } ;
typedef int data ;


 int EINVAL ;
 int EIO ;
 int TPS_MAX_LEN ;
 scalar_t__ WARN_ON (int) ;
 int memcpy (void*,size_t*,size_t) ;
 int regmap_raw_read (int ,size_t,size_t*,int) ;

__attribute__((used)) static int
tps6598x_block_read(struct tps6598x *tps, u8 reg, void *val, size_t len)
{
 u8 data[TPS_MAX_LEN + 1];
 int ret;

 if (WARN_ON(len + 1 > sizeof(data)))
  return -EINVAL;

 if (!tps->i2c_protocol)
  return regmap_raw_read(tps->regmap, reg, val, len);

 ret = regmap_raw_read(tps->regmap, reg, data, sizeof(data));
 if (ret)
  return ret;

 if (data[0] < len)
  return -EIO;

 memcpy(val, &data[1], len);
 return 0;
}
