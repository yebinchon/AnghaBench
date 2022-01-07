
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq25890_device {int * rmap_fields; } ;
typedef enum bq25890_fields { ____Placeholder_bq25890_fields } bq25890_fields ;


 int regmap_field_read (int ,int*) ;

__attribute__((used)) static int bq25890_field_read(struct bq25890_device *bq,
         enum bq25890_fields field_id)
{
 int ret;
 int val;

 ret = regmap_field_read(bq->rmap_fields[field_id], &val);
 if (ret < 0)
  return ret;

 return val;
}
