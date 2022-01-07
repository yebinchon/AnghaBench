
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct ab8500_btemp {int btemp_psy; int btemp_wq; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ab8500_btemp_irq ;
 int destroy_workqueue (int ) ;
 int flush_scheduled_work () ;
 int free_irq (int,struct ab8500_btemp*) ;
 struct ab8500_btemp* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq_byname (struct platform_device*,int ) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int ab8500_btemp_remove(struct platform_device *pdev)
{
 struct ab8500_btemp *di = platform_get_drvdata(pdev);
 int i, irq;


 for (i = 0; i < ARRAY_SIZE(ab8500_btemp_irq); i++) {
  irq = platform_get_irq_byname(pdev, ab8500_btemp_irq[i].name);
  free_irq(irq, di);
 }


 destroy_workqueue(di->btemp_wq);

 flush_scheduled_work();
 power_supply_unregister(di->btemp_psy);

 return 0;
}
