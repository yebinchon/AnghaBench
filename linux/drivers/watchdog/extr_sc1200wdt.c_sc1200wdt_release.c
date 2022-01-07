
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int WDTO ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 int open_flag ;
 int pr_crit (char*,int ) ;
 int pr_info (char*) ;
 int sc1200wdt_stop () ;
 int sc1200wdt_write_data (int ,int ) ;
 int timeout ;

__attribute__((used)) static int sc1200wdt_release(struct inode *inode, struct file *file)
{
 if (expect_close == 42) {
  sc1200wdt_stop();
  pr_info("Watchdog disabled\n");
 } else {
  sc1200wdt_write_data(WDTO, timeout);
  pr_crit("Unexpected close!, timeout = %d min(s)\n", timeout);
 }
 clear_bit(0, &open_flag);
 expect_close = 0;

 return 0;
}
