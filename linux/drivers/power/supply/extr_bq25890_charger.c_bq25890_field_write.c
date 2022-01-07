
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq25890_device {int * rmap_fields; } ;
typedef enum bq25890_fields { ____Placeholder_bq25890_fields } bq25890_fields ;


 int regmap_field_write (int ,int ) ;

__attribute__((used)) static int bq25890_field_write(struct bq25890_device *bq,
          enum bq25890_fields field_id, u8 val)
{
 return regmap_field_write(bq->rmap_fields[field_id], val);
}
