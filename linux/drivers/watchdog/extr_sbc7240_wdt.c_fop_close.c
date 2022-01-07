
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int SBC7240_EXPECT_CLOSE_STATUS_BIT ;
 int SBC7240_OPEN_STATUS_BIT ;
 int clear_bit (int ,int *) ;
 int nowayout ;
 int pr_crit (char*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wdt_disable () ;
 int wdt_keepalive () ;
 int wdt_status ;

__attribute__((used)) static int fop_close(struct inode *inode, struct file *file)
{
 if (test_and_clear_bit(SBC7240_EXPECT_CLOSE_STATUS_BIT, &wdt_status)
     || !nowayout) {
  wdt_disable();
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  wdt_keepalive();
 }

 clear_bit(SBC7240_OPEN_STATUS_BIT, &wdt_status);
 return 0;
}
