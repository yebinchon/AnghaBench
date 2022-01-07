
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int pr_crit (char*) ;
 int wdt_is_open ;
 int wdt_ping () ;
 int wdt_stop () ;

__attribute__((used)) static int wdt_release(struct inode *inode, struct file *file)
{
 if (expect_close == 42) {
  wdt_stop();
  clear_bit(0, &wdt_is_open);
 } else {
  pr_crit("WDT device closed unexpectedly.  WDT will not stop!\n");
  wdt_ping();
 }
 expect_close = 0;
 return 0;
}
