
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct bq24257_device {int iilimit_setup_work; scalar_t__ iilimit_autoset_enable; } ;


 int BQ24257_IILIMIT_MAP_SIZE ;
 int F_IILIMIT ;
 int bq24257_field_write (struct bq24257_device*,int ,int ) ;
 int bq24257_find_idx (int ,int ,int ) ;
 int bq24257_iilimit_map ;
 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static int bq24257_set_input_current_limit(struct bq24257_device *bq,
     const union power_supply_propval *val)
{





 if (bq->iilimit_autoset_enable)
  cancel_delayed_work_sync(&bq->iilimit_setup_work);

 return bq24257_field_write(bq, F_IILIMIT,
       bq24257_find_idx(val->intval,
          bq24257_iilimit_map,
          BQ24257_IILIMIT_MAP_SIZE));
}
