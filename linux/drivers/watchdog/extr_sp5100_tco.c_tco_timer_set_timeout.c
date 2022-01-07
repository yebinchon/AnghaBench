
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct sp5100_tco {int tcobase; } ;


 int SP5100_WDT_COUNT (int ) ;
 struct sp5100_tco* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int tco_timer_set_timeout(struct watchdog_device *wdd,
     unsigned int t)
{
 struct sp5100_tco *tco = watchdog_get_drvdata(wdd);


 writel(t, SP5100_WDT_COUNT(tco->tcobase));

 wdd->timeout = t;

 return 0;
}
