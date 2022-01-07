
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217_charger {scalar_t__ poll_task; } ;
struct platform_device {int dummy; } ;


 int kthread_stop (scalar_t__) ;
 struct tps65217_charger* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tps65217_charger_remove(struct platform_device *pdev)
{
 struct tps65217_charger *charger = platform_get_drvdata(pdev);

 if (charger->poll_task)
  kthread_stop(charger->poll_task);

 return 0;
}
