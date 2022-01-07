
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_wdog {int dummy; } ;
struct platform_device {int dummy; } ;


 int st_wdog_dev ;
 int st_wdog_setup (struct st_wdog*,int) ;
 struct st_wdog* watchdog_get_drvdata (int *) ;

__attribute__((used)) static int st_wdog_remove(struct platform_device *pdev)
{
 struct st_wdog *st_wdog = watchdog_get_drvdata(&st_wdog_dev);

 st_wdog_setup(st_wdog, 0);

 return 0;
}
