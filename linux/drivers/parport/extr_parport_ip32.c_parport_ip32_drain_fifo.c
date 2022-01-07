
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int ECR_F_EMPTY ;
 int current ;
 unsigned long jiffies ;
 int msleep_interruptible (unsigned int) ;
 int parport_ip32_read_econtrol (struct parport*) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int parport_ip32_drain_fifo(struct parport *p,
         unsigned long timeout)
{
 unsigned long expire = jiffies + timeout;
 unsigned int polling_interval;
 unsigned int counter;


 for (counter = 0; counter < 40; counter++) {
  if (parport_ip32_read_econtrol(p) & ECR_F_EMPTY)
   break;
  if (time_after(jiffies, expire))
   break;
  if (signal_pending(current))
   break;
  udelay(5);
 }


 polling_interval = 1;
 while (!(parport_ip32_read_econtrol(p) & ECR_F_EMPTY)) {
  if (time_after_eq(jiffies, expire))
   break;
  msleep_interruptible(polling_interval);
  if (signal_pending(current))
   break;
  if (polling_interval < 128)
   polling_interval *= 2;
 }

 return !!(parport_ip32_read_econtrol(p) & ECR_F_EMPTY);
}
