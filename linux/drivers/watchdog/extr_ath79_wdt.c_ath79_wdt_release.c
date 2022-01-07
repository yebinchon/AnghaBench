
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int WDT_FLAGS_BUSY ;
 int WDT_FLAGS_EXPECT_CLOSE ;
 int ath79_wdt_disable () ;
 int ath79_wdt_keepalive () ;
 int clear_bit (int ,int *) ;
 int pr_crit (char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wdt_flags ;

__attribute__((used)) static int ath79_wdt_release(struct inode *inode, struct file *file)
{
 if (test_bit(WDT_FLAGS_EXPECT_CLOSE, &wdt_flags))
  ath79_wdt_disable();
 else {
  pr_crit("device closed unexpectedly, watchdog timer will not stop!\n");
  ath79_wdt_keepalive();
 }

 clear_bit(WDT_FLAGS_BUSY, &wdt_flags);
 clear_bit(WDT_FLAGS_EXPECT_CLOSE, &wdt_flags);

 return 0;
}
