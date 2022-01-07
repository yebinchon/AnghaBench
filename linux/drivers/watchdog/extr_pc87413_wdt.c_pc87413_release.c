
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int pc87413_disable () ;
 int pc87413_refresh () ;
 int pr_crit (char*) ;
 int pr_info (char*) ;
 int timer_enabled ;

__attribute__((used)) static int pc87413_release(struct inode *inode, struct file *file)
{


 if (expect_close == 42) {
  pc87413_disable();
  pr_info("Watchdog disabled, sleeping again...\n");
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  pc87413_refresh();
 }
 clear_bit(0, &timer_enabled);
 expect_close = 0;
 return 0;
}
