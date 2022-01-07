
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24190_dev_info {int dummy; } ;


 int bq24190_read_mask (struct bq24190_dev_info*,int,int,int,int*) ;

__attribute__((used)) static int bq24190_get_field_val(struct bq24190_dev_info *bdi,
  u8 reg, u8 mask, u8 shift,
  const int tbl[], int tbl_size,
  int *val)
{
 u8 v;
 int ret;

 ret = bq24190_read_mask(bdi, reg, mask, shift, &v);
 if (ret < 0)
  return ret;

 v = (v >= tbl_size) ? (tbl_size - 1) : v;
 *val = tbl[v];

 return 0;
}
