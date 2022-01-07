
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ar7_wdt_disable_wdt () ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 int nowayout ;
 int pr_warn (char*) ;
 int wdt_is_open ;

__attribute__((used)) static int ar7_wdt_release(struct inode *inode, struct file *file)
{
 if (!expect_close)
  pr_warn("watchdog device closed unexpectedly, will not disable the watchdog timer\n");
 else if (!nowayout)
  ar7_wdt_disable_wdt();
 clear_bit(0, &wdt_is_open);
 return 0;
}
