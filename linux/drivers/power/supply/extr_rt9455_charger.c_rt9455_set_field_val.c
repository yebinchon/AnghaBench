
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt9455_info {int * regmap_fields; } ;
typedef enum rt9455_fields { ____Placeholder_rt9455_fields } rt9455_fields ;


 int regmap_field_write (int ,unsigned int) ;
 unsigned int rt9455_find_idx (int const*,int,int) ;

__attribute__((used)) static int rt9455_set_field_val(struct rt9455_info *info,
    enum rt9455_fields field,
    const int tbl[], int tbl_size, int val)
{
 unsigned int idx = rt9455_find_idx(tbl, tbl_size, val);

 return regmap_field_write(info->regmap_fields[field], idx);
}
