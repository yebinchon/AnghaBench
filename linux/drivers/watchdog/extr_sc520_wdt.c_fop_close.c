
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int pr_crit (char*) ;
 int wdt_expect_close ;
 int wdt_is_open ;
 int wdt_keepalive () ;
 int wdt_turnoff () ;

__attribute__((used)) static int fop_close(struct inode *inode, struct file *file)
{
 if (wdt_expect_close == 42)
  wdt_turnoff();
 else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  wdt_keepalive();
 }
 clear_bit(0, &wdt_is_open);
 wdt_expect_close = 0;
 return 0;
}
