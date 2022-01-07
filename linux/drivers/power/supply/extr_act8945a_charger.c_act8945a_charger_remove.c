
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct act8945a_charger {int init_done; int work; } ;


 int cancel_work_sync (int *) ;
 struct act8945a_charger* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int act8945a_charger_remove(struct platform_device *pdev)
{
 struct act8945a_charger *charger = platform_get_drvdata(pdev);

 charger->init_done = 0;
 cancel_work_sync(&charger->work);

 return 0;
}
