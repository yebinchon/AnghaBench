
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq24257_device {int * rmap_fields; } ;
typedef enum bq24257_fields { ____Placeholder_bq24257_fields } bq24257_fields ;


 int regmap_field_write (int ,int ) ;

__attribute__((used)) static int bq24257_field_write(struct bq24257_device *bq,
          enum bq24257_fields field_id, u8 val)
{
 return regmap_field_write(bq->rmap_fields[field_id], val);
}
