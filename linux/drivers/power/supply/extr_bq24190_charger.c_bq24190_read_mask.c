
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24190_dev_info {int dummy; } ;


 int bq24190_read (struct bq24190_dev_info*,int,int*) ;

__attribute__((used)) static int bq24190_read_mask(struct bq24190_dev_info *bdi, u8 reg,
  u8 mask, u8 shift, u8 *data)
{
 u8 v;
 int ret;

 ret = bq24190_read(bdi, reg, &v);
 if (ret < 0)
  return ret;

 v &= mask;
 v >>= shift;
 *data = v;

 return 0;
}
