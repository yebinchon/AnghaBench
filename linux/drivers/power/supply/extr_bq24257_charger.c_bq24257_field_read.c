
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq24257_device {int * rmap_fields; } ;
typedef enum bq24257_fields { ____Placeholder_bq24257_fields } bq24257_fields ;


 int regmap_field_read (int ,int*) ;

__attribute__((used)) static int bq24257_field_read(struct bq24257_device *bq,
         enum bq24257_fields field_id)
{
 int ret;
 int val;

 ret = regmap_field_read(bq->rmap_fields[field_id], &val);
 if (ret < 0)
  return ret;

 return val;
}
