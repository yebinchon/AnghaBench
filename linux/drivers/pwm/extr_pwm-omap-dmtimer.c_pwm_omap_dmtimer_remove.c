
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pwm_omap_dmtimer_chip {int chip; int mutex; int dm_timer; TYPE_2__* pdata; TYPE_1__* dm_timer_pdev; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int (* free ) (int ) ;int (* stop ) (int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int mutex_destroy (int *) ;
 struct pwm_omap_dmtimer_chip* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ pm_runtime_active (int *) ;
 int pwmchip_remove (int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int pwm_omap_dmtimer_remove(struct platform_device *pdev)
{
 struct pwm_omap_dmtimer_chip *omap = platform_get_drvdata(pdev);

 if (pm_runtime_active(&omap->dm_timer_pdev->dev))
  omap->pdata->stop(omap->dm_timer);

 omap->pdata->free(omap->dm_timer);

 mutex_destroy(&omap->mutex);

 return pwmchip_remove(&omap->chip);
}
