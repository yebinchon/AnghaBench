
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_omap_dmtimer_chip {int dm_timer; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* start ) (int ) ;int (* disable ) (int ) ;int (* write_counter ) (int ,int ) ;int (* enable ) (int ) ;} ;


 int DM_TIMER_LOAD_MIN ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;

__attribute__((used)) static void pwm_omap_dmtimer_start(struct pwm_omap_dmtimer_chip *omap)
{
 omap->pdata->enable(omap->dm_timer);
 omap->pdata->write_counter(omap->dm_timer, DM_TIMER_LOAD_MIN);
 omap->pdata->disable(omap->dm_timer);

 omap->pdata->start(omap->dm_timer);
}
