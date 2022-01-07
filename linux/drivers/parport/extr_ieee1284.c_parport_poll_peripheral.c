
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int EINTR ;
 int current ;
 scalar_t__ need_resched () ;
 unsigned char parport_read_status (struct parport*) ;
 scalar_t__ signal_pending (int ) ;
 int udelay (int) ;

int parport_poll_peripheral(struct parport *port,
       unsigned char mask,
       unsigned char result,
       int usec)
{

 int count = usec / 5 + 2;
 int i;
 unsigned char status;
 for (i = 0; i < count; i++) {
  status = parport_read_status (port);
  if ((status & mask) == result)
   return 0;
  if (signal_pending (current))
   return -EINTR;
  if (need_resched())
   break;
  if (i >= 2)
   udelay (5);
 }

 return 1;
}
