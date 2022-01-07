
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 scalar_t__ it8712f_wdt_disable () ;
 int nowayout ;
 int pr_warn (char*) ;
 int wdt_open ;

__attribute__((used)) static int it8712f_wdt_release(struct inode *inode, struct file *file)
{
 if (expect_close != 42) {
  pr_warn("watchdog device closed unexpectedly, will not disable the watchdog timer\n");
 } else if (!nowayout) {
  if (it8712f_wdt_disable())
   pr_warn("Watchdog disable failed\n");
 }
 expect_close = 0;
 clear_bit(0, &wdt_open);

 return 0;
}
