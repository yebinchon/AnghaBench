
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {unsigned long long intval; } ;
typedef scalar_t__ u64 ;
struct da9150_fg {int dummy; } ;


 int DA9150_QIF_UAVG ;
 int DA9150_QIF_UAVG_SIZE ;
 unsigned long long da9150_fg_read_attr_sync (struct da9150_fg*,int ,int ) ;
 int do_div (scalar_t__,int) ;

__attribute__((used)) static int da9150_fg_voltage_avg(struct da9150_fg *fg,
     union power_supply_propval *val)
{
 u64 res;

 val->intval = da9150_fg_read_attr_sync(fg, DA9150_QIF_UAVG,
            DA9150_QIF_UAVG_SIZE);

 res = (u64) (val->intval * 186ULL);
 do_div(res, 10000);
 val->intval = (int) res;

 return 0;
}
