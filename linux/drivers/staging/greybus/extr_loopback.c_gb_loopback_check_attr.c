
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_loopback {scalar_t__ us_wait; scalar_t__ size; scalar_t__ iteration_max; int type; int wq; int jiffy_timeout; int timeout; int kfifo_lat; int dev; scalar_t__ error; scalar_t__ send_count; scalar_t__ iteration_count; scalar_t__ requests_completed; scalar_t__ requests_timedout; } ;
struct TYPE_2__ {scalar_t__ size_max; } ;


 int GB_LOOPBACK_TIMEOUT_MAX ;
 int GB_LOOPBACK_TIMEOUT_MIN ;



 scalar_t__ GB_LOOPBACK_US_WAIT_MAX ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__) ;
 TYPE_1__ gb_dev ;
 int gb_loopback_reset_stats (struct gb_loopback*) ;
 scalar_t__ kfifo_depth ;
 int kfifo_reset_out (int *) ;
 int usecs_to_jiffies (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void gb_loopback_check_attr(struct gb_loopback *gb)
{
 if (gb->us_wait > GB_LOOPBACK_US_WAIT_MAX)
  gb->us_wait = GB_LOOPBACK_US_WAIT_MAX;
 if (gb->size > gb_dev.size_max)
  gb->size = gb_dev.size_max;
 gb->requests_timedout = 0;
 gb->requests_completed = 0;
 gb->iteration_count = 0;
 gb->send_count = 0;
 gb->error = 0;

 if (kfifo_depth < gb->iteration_max) {
  dev_warn(gb->dev,
    "cannot log bytes %u kfifo_depth %u\n",
    gb->iteration_max, kfifo_depth);
 }
 kfifo_reset_out(&gb->kfifo_lat);

 switch (gb->type) {
 case 130:
 case 128:
 case 129:
  gb->jiffy_timeout = usecs_to_jiffies(gb->timeout);
  if (!gb->jiffy_timeout)
   gb->jiffy_timeout = GB_LOOPBACK_TIMEOUT_MIN;
  else if (gb->jiffy_timeout > GB_LOOPBACK_TIMEOUT_MAX)
   gb->jiffy_timeout = GB_LOOPBACK_TIMEOUT_MAX;
  gb_loopback_reset_stats(gb);
  wake_up(&gb->wq);
  break;
 default:
  gb->type = 0;
  break;
 }
}
