
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int safety_timer_expired; } ;
struct TYPE_5__ {int charger_type; } ;
struct abx500_chargalg {int safety_timer; TYPE_1__ events; int dev; TYPE_3__* bm; TYPE_2__ chg_info; } ;
struct TYPE_6__ {int main_safety_tmr_h; int usb_safety_tmr_h; } ;



 int FIVE_MINUTES_IN_SECONDS ;
 int HRTIMER_MODE_REL ;
 int ONE_HOUR_IN_SECONDS ;

 int dev_err (int ,char*) ;
 int hrtimer_set_expires_range (int *,int ,int ) ;
 int hrtimer_start_expires (int *,int ) ;
 int ktime_set (int,int ) ;

__attribute__((used)) static void abx500_chargalg_start_safety_timer(struct abx500_chargalg *di)
{

 int timer_expiration = 0;

 switch (di->chg_info.charger_type) {
 case 129:
  timer_expiration = di->bm->main_safety_tmr_h;
  break;

 case 128:
  timer_expiration = di->bm->usb_safety_tmr_h;
  break;

 default:
  dev_err(di->dev, "Unknown charger to charge from\n");
  break;
 }

 di->events.safety_timer_expired = 0;
 hrtimer_set_expires_range(&di->safety_timer,
  ktime_set(timer_expiration * ONE_HOUR_IN_SECONDS, 0),
  ktime_set(FIVE_MINUTES_IN_SECONDS, 0));
 hrtimer_start_expires(&di->safety_timer, HRTIMER_MODE_REL);
}
