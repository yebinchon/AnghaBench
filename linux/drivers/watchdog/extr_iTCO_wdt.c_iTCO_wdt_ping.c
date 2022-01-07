
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct iTCO_wdt_private {int iTCO_version; int io_lock; } ;


 int TCO1_STS (struct iTCO_wdt_private*) ;
 int TCO_RLD (struct iTCO_wdt_private*) ;
 int outb (int,int ) ;
 int outw (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct iTCO_wdt_private* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int iTCO_wdt_ping(struct watchdog_device *wd_dev)
{
 struct iTCO_wdt_private *p = watchdog_get_drvdata(wd_dev);

 spin_lock(&p->io_lock);


 if (p->iTCO_version >= 2) {
  outw(0x01, TCO_RLD(p));
 } else if (p->iTCO_version == 1) {


  outw(0x0008, TCO1_STS(p));

  outb(0x01, TCO_RLD(p));
 }

 spin_unlock(&p->io_lock);
 return 0;
}
