
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parport {TYPE_2__* physport; } ;
struct TYPE_4__ {int spintime; TYPE_1__* cad; } ;
struct TYPE_3__ {int timeout; } ;


 int EINTR ;
 int current ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int parport_poll_peripheral (struct parport*,unsigned char,unsigned char,int) ;
 unsigned char parport_read_status (struct parport*) ;
 int parport_wait_event (struct parport*,unsigned long) ;
 int schedule_timeout_interruptible (unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int parport_wait_peripheral(struct parport *port,
       unsigned char mask,
       unsigned char result)
{
 int ret;
 int usec;
 unsigned long deadline;
 unsigned char status;

 usec = port->physport->spintime;
 if (!port->physport->cad->timeout)


  usec = 35000;







 ret = parport_poll_peripheral (port, mask, result, usec);
 if (ret != 1)
  return ret;

 if (!port->physport->cad->timeout)


  return 1;


 deadline = jiffies + msecs_to_jiffies(40);
 while (time_before (jiffies, deadline)) {
  if (signal_pending (current))
   return -EINTR;



  if ((ret = parport_wait_event (port, msecs_to_jiffies(10))) < 0)
   return ret;

  status = parport_read_status (port);
  if ((status & mask) == result)
   return 0;

  if (!ret) {



   schedule_timeout_interruptible(msecs_to_jiffies(10));
  }
 }

 return 1;
}
