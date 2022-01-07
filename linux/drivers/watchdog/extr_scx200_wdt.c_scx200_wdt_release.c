
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int nowayout ;
 int open_lock ;
 int pr_warn (char*) ;
 int scx200_wdt_disable () ;

__attribute__((used)) static int scx200_wdt_release(struct inode *inode, struct file *file)
{
 if (expect_close != 42)
  pr_warn("watchdog device closed unexpectedly, will not disable the watchdog timer\n");
 else if (!nowayout)
  scx200_wdt_disable();
 expect_close = 0;
 clear_bit(0, &open_lock);

 return 0;
}
