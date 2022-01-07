
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int pr_crit (char*) ;
 int wafwdt_is_open ;
 int wafwdt_ping () ;
 int wafwdt_stop () ;

__attribute__((used)) static int wafwdt_close(struct inode *inode, struct file *file)
{
 if (expect_close == 42)
  wafwdt_stop();
 else {
  pr_crit("WDT device closed unexpectedly.  WDT will not stop!\n");
  wafwdt_ping();
 }
 clear_bit(0, &wafwdt_is_open);
 expect_close = 0;
 return 0;
}
