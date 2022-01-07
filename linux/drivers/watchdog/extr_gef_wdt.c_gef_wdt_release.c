
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int GEF_WDOG_FLAG_OPENED ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 int gef_wdt_handler_disable () ;
 int gef_wdt_service () ;
 int pr_crit (char*) ;
 int wdt_flags ;

__attribute__((used)) static int gef_wdt_release(struct inode *inode, struct file *file)
{
 if (expect_close == 42)
  gef_wdt_handler_disable();
 else {
  pr_crit("unexpected close, not stopping timer!\n");
  gef_wdt_service();
 }
 expect_close = 0;

 clear_bit(GEF_WDOG_FLAG_OPENED, &wdt_flags);

 return 0;
}
