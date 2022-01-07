
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65090_charger {int ac; int poll_task; int irq; } ;
struct platform_device {int dummy; } ;


 int ENXIO ;
 int kthread_stop (int ) ;
 struct tps65090_charger* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int tps65090_charger_remove(struct platform_device *pdev)
{
 struct tps65090_charger *cdata = platform_get_drvdata(pdev);

 if (cdata->irq == -ENXIO)
  kthread_stop(cdata->poll_task);
 power_supply_unregister(cdata->ac);

 return 0;
}
