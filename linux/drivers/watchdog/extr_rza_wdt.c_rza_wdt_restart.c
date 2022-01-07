
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct rza_wdt {scalar_t__ base; } ;


 scalar_t__ WRCSR ;
 int WRCSR_CLEAR_WOVF ;
 int WRCSR_MAGIC ;
 int WRCSR_RSTE ;
 scalar_t__ WTCNT ;
 int WTCNT_MAGIC ;
 scalar_t__ WTCSR ;
 int WTCSR_MAGIC ;
 int WTSCR_TME ;
 int WTSCR_WT ;
 int readb (scalar_t__) ;
 int udelay (int) ;
 struct rza_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int wmb () ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int rza_wdt_restart(struct watchdog_device *wdev, unsigned long action,
       void *data)
{
 struct rza_wdt *priv = watchdog_get_drvdata(wdev);


 writew(WTCSR_MAGIC | 0, priv->base + WTCSR);


 readb(priv->base + WRCSR);
 writew(WRCSR_CLEAR_WOVF, priv->base + WRCSR);





 writew(WRCSR_MAGIC | WRCSR_RSTE, priv->base + WRCSR);
 writew(WTCNT_MAGIC | 255, priv->base + WTCNT);
 writew(WTCSR_MAGIC | WTSCR_WT | WTSCR_TME, priv->base + WTCSR);




 wmb();


 udelay(20);

 return 0;
}
