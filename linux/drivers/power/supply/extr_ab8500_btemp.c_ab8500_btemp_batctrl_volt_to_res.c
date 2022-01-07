
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ab8500_btemp {int curr_source; TYPE_1__* bm; int parent; } ;
struct TYPE_2__ {scalar_t__ adc_therm; int gnd_lift_resistance; } ;


 scalar_t__ ABx500_ADC_THERM_BATCTRL ;
 scalar_t__ is_ab8500_1p1_or_earlier (int ) ;

__attribute__((used)) static int ab8500_btemp_batctrl_volt_to_res(struct ab8500_btemp *di,
 int v_batctrl, int inst_curr)
{
 int rbs;

 if (is_ab8500_1p1_or_earlier(di->parent)) {




  return (450000 * (v_batctrl)) / (1800 - v_batctrl);
 }

 if (di->bm->adc_therm == ABx500_ADC_THERM_BATCTRL) {




  rbs = (v_batctrl * 1000
         - di->bm->gnd_lift_resistance * inst_curr)
        / di->curr_source;
 } else {




  rbs = (80000 * (v_batctrl)) / (1800 - v_batctrl);
 }

 return rbs;
}
