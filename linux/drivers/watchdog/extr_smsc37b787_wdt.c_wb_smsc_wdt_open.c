
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 scalar_t__ UNIT_SECOND ;
 int __module_get (int ) ;
 scalar_t__ nowayout ;
 int pr_info (char*,int ,char*) ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int timeout ;
 int timer_enabled ;
 scalar_t__ unit ;
 int wb_smsc_wdt_enable () ;

__attribute__((used)) static int wb_smsc_wdt_open(struct inode *inode, struct file *file)
{


 if (test_and_set_bit(0, &timer_enabled))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);


 wb_smsc_wdt_enable();

 pr_info("Watchdog enabled. Timeout set to %d %s\n",
  timeout, (unit == UNIT_SECOND) ? "second(s)" : "minute(s)");

 return stream_open(inode, file);
}
