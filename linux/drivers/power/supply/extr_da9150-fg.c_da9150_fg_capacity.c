
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct da9150_fg {int dummy; } ;


 int DA9150_QIF_SOC_PCT ;
 int DA9150_QIF_SOC_PCT_SIZE ;
 int da9150_fg_read_attr_sync (struct da9150_fg*,int ,int ) ;

__attribute__((used)) static int da9150_fg_capacity(struct da9150_fg *fg,
         union power_supply_propval *val)
{
 val->intval = da9150_fg_read_attr_sync(fg, DA9150_QIF_SOC_PCT,
            DA9150_QIF_SOC_PCT_SIZE);

 if (val->intval > 100)
  val->intval = 100;

 return 0;
}
