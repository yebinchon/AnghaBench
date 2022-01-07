
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;


 int JITTER_DELAY ;
 int bat_work ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void s3c_adc_bat_ext_power_changed(struct power_supply *psy)
{
 schedule_delayed_work(&bat_work,
  msecs_to_jiffies(JITTER_DELAY));
}
