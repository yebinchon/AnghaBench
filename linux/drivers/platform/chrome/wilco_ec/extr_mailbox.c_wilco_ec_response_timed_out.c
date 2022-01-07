
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilco_ec_device {TYPE_1__* io_command; } ;
struct TYPE_2__ {int start; } ;


 int EC_CMDR_BUSY ;
 int EC_CMDR_PENDING ;
 unsigned long EC_MAILBOX_TIMEOUT ;
 int inb (int ) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool wilco_ec_response_timed_out(struct wilco_ec_device *ec)
{
 unsigned long timeout = jiffies + EC_MAILBOX_TIMEOUT;

 do {
  if (!(inb(ec->io_command->start) &
        (EC_CMDR_PENDING | EC_CMDR_BUSY)))
   return 0;
  usleep_range(100, 200);
 } while (time_before(jiffies, timeout));

 return 1;
}
