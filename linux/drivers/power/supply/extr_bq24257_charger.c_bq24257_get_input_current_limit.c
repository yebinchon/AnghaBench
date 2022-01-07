
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct bq24257_device {int dummy; } ;


 int BQ24257_IILIMIT_MAP_SIZE ;
 int ENODATA ;
 int F_IILIMIT ;
 int bq24257_field_read (struct bq24257_device*,int ) ;
 int * bq24257_iilimit_map ;

__attribute__((used)) static int bq24257_get_input_current_limit(struct bq24257_device *bq,
        union power_supply_propval *val)
{
 int ret;

 ret = bq24257_field_read(bq, F_IILIMIT);
 if (ret < 0)
  return ret;
 if (ret >= BQ24257_IILIMIT_MAP_SIZE)
  return -ENODATA;

 val->intval = bq24257_iilimit_map[ret];

 return 0;
}
