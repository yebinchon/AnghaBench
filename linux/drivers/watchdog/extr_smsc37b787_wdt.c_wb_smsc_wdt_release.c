
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int pr_crit (char*) ;
 int pr_info (char*) ;
 int timer_enabled ;
 int wb_smsc_wdt_disable () ;
 int wb_smsc_wdt_reset_timer () ;

__attribute__((used)) static int wb_smsc_wdt_release(struct inode *inode, struct file *file)
{


 if (expect_close == 42) {
  wb_smsc_wdt_disable();
  pr_info("Watchdog disabled, sleeping again...\n");
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  wb_smsc_wdt_reset_timer();
 }

 clear_bit(0, &timer_enabled);
 expect_close = 0;
 return 0;
}
