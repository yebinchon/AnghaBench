
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct iTCO_wdt_private {int iTCO_version; int io_lock; } ;


 int TCO1_STS (struct iTCO_wdt_private*) ;
 int TCO_RLD (struct iTCO_wdt_private*) ;
 int TCOv1_TMR (struct iTCO_wdt_private*) ;
 int inb (int ) ;
 int inw (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned int ticks_to_seconds (struct iTCO_wdt_private*,unsigned char) ;
 struct iTCO_wdt_private* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int iTCO_wdt_get_timeleft(struct watchdog_device *wd_dev)
{
 struct iTCO_wdt_private *p = watchdog_get_drvdata(wd_dev);
 unsigned int val16;
 unsigned char val8;
 unsigned int time_left = 0;


 if (p->iTCO_version >= 2) {
  spin_lock(&p->io_lock);
  val16 = inw(TCO_RLD(p));
  val16 &= 0x3ff;
  spin_unlock(&p->io_lock);

  time_left = ticks_to_seconds(p, val16);
 } else if (p->iTCO_version == 1) {
  spin_lock(&p->io_lock);
  val8 = inb(TCO_RLD(p));
  val8 &= 0x3f;
  if (!(inw(TCO1_STS(p)) & 0x0008))
   val8 += (inb(TCOv1_TMR(p)) & 0x3f);
  spin_unlock(&p->io_lock);

  time_left = ticks_to_seconds(p, val8);
 }
 return time_left;
}
