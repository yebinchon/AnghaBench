
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int HZ ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 scalar_t__ jiffies ;
 int mixcomwd_opened ;
 int mixcomwd_timer ;
 int mixcomwd_timer_alive ;
 int mod_timer (int *,scalar_t__) ;
 int pr_crit (char*) ;
 int pr_err (char*) ;

__attribute__((used)) static int mixcomwd_release(struct inode *inode, struct file *file)
{
 if (expect_close == 42) {
  if (mixcomwd_timer_alive) {
   pr_err("release called while internal timer alive\n");
   return -EBUSY;
  }
  mixcomwd_timer_alive = 1;
  mod_timer(&mixcomwd_timer, jiffies + 5 * HZ);
 } else
  pr_crit("WDT device closed unexpectedly.  WDT will not stop!\n");

 clear_bit(0, &mixcomwd_opened);
 expect_close = 0;
 return 0;
}
