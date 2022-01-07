
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9150_fg {int warn_soc; int crit_soc; } ;


 int DA9150_QIF_CHARGE_LIMIT ;
 int DA9150_QIF_CHARGE_LIMIT_SIZE ;
 int DA9150_QIF_DISCHARGE_LIMIT ;
 int DA9150_QIF_DISCHARGE_LIMIT_SIZE ;
 int DA9150_QIF_SOC_PCT ;
 int DA9150_QIF_SOC_PCT_SIZE ;
 int da9150_fg_read_attr_sync (struct da9150_fg*,int ,int ) ;
 int da9150_fg_write_attr_sync (struct da9150_fg*,int ,int ,int) ;

__attribute__((used)) static void da9150_fg_soc_event_config(struct da9150_fg *fg)
{
 int soc;

 soc = da9150_fg_read_attr_sync(fg, DA9150_QIF_SOC_PCT,
           DA9150_QIF_SOC_PCT_SIZE);

 if (soc > fg->warn_soc) {

  da9150_fg_write_attr_sync(fg, DA9150_QIF_DISCHARGE_LIMIT,
       DA9150_QIF_DISCHARGE_LIMIT_SIZE,
       fg->warn_soc + 1);
 } else if ((soc <= fg->warn_soc) && (soc > fg->crit_soc)) {




  da9150_fg_write_attr_sync(fg, DA9150_QIF_DISCHARGE_LIMIT,
       DA9150_QIF_DISCHARGE_LIMIT_SIZE,
       fg->crit_soc + 1);

  da9150_fg_write_attr_sync(fg, DA9150_QIF_CHARGE_LIMIT,
       DA9150_QIF_CHARGE_LIMIT_SIZE,
       fg->warn_soc);
 } else if (soc <= fg->crit_soc) {

  da9150_fg_write_attr_sync(fg, DA9150_QIF_CHARGE_LIMIT,
       DA9150_QIF_CHARGE_LIMIT_SIZE,
       fg->crit_soc);
 }
}
