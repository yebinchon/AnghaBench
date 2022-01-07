
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int driver_closed; int timer_started; int driver_open; } ;


 int ENOTTY ;
 int intel_scu_keepalive () ;
 int pr_crit (char*) ;
 int pr_debug (char*) ;
 int test_and_clear_bit (int ,int *) ;
 TYPE_1__ watchdog_device ;
 int watchdog_fire () ;

__attribute__((used)) static int intel_scu_release(struct inode *inode, struct file *file)
{
 if (!test_and_clear_bit(0, &watchdog_device.driver_open)) {
  pr_debug("intel_scu_release, without open\n");
  return -ENOTTY;
 }

 if (!watchdog_device.timer_started) {

  pr_debug("closed, without starting timer\n");
  return 0;
 }

 pr_crit("Unexpected close of /dev/watchdog!\n");


 watchdog_device.driver_closed = 1;


 intel_scu_keepalive();


 watchdog_fire();


 return 0;
}
