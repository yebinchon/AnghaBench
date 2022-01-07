
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt9455_info {int * regmap_fields; } ;
typedef enum rt9455_fields { ____Placeholder_rt9455_fields } rt9455_fields ;


 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int rt9455_get_field_val(struct rt9455_info *info,
    enum rt9455_fields field,
    const int tbl[], int tbl_size, int *val)
{
 unsigned int v;
 int ret;

 ret = regmap_field_read(info->regmap_fields[field], &v);
 if (ret)
  return ret;

 v = (v >= tbl_size) ? (tbl_size - 1) : v;
 *val = tbl[v];

 return 0;
}
