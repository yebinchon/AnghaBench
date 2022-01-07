
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int WDT_ENABLED ;
 int WDT_IN_USE ;
 int WDT_OK_TO_CLOSE ;
 int clear_bit (int ,int *) ;
 int iop_watchdog_timeout () ;
 int pr_crit (char*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wdt_disable () ;
 int wdt_enable () ;
 int wdt_status ;

__attribute__((used)) static int iop_wdt_release(struct inode *inode, struct file *file)
{
 int state = 1;
 if (test_bit(WDT_OK_TO_CLOSE, &wdt_status))
  if (test_bit(WDT_ENABLED, &wdt_status))
   state = wdt_disable();




 if (state != 0) {
  wdt_enable();
  pr_crit("Device closed unexpectedly - reset in %lu seconds\n",
   iop_watchdog_timeout());
 }

 clear_bit(WDT_IN_USE, &wdt_status);
 clear_bit(WDT_OK_TO_CLOSE, &wdt_status);

 return 0;
}
