
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int pr_crit (char*) ;
 int sch311x_wdt_expect_close ;
 int sch311x_wdt_is_open ;
 int sch311x_wdt_keepalive () ;
 int sch311x_wdt_stop () ;

__attribute__((used)) static int sch311x_wdt_close(struct inode *inode, struct file *file)
{
 if (sch311x_wdt_expect_close == 42) {
  sch311x_wdt_stop();
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  sch311x_wdt_keepalive();
 }
 clear_bit(0, &sch311x_wdt_is_open);
 sch311x_wdt_expect_close = 0;
 return 0;
}
