
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int inuse; } ;


 int THIS_MODULE ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 int module_put (int ) ;
 int pr_crit (char*) ;
 TYPE_1__ rc32434_wdt_device ;
 int rc32434_wdt_ping () ;
 int rc32434_wdt_stop () ;

__attribute__((used)) static int rc32434_wdt_release(struct inode *inode, struct file *file)
{
 if (expect_close == 42) {
  rc32434_wdt_stop();
  module_put(THIS_MODULE);
 } else {
  pr_crit("device closed unexpectedly. WDT will not stop!\n");
  rc32434_wdt_ping();
 }
 clear_bit(0, &rc32434_wdt_device.inuse);
 return 0;
}
