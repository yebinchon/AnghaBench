
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int ibwdt_disable () ;
 int ibwdt_is_open ;
 int ibwdt_ping () ;
 int pr_crit (char*) ;

__attribute__((used)) static int ibwdt_close(struct inode *inode, struct file *file)
{
 if (expect_close == 42) {
  ibwdt_disable();
 } else {
  pr_crit("WDT device closed unexpectedly.  WDT will not stop!\n");
  ibwdt_ping();
 }
 clear_bit(0, &ibwdt_is_open);
 expect_close = 0;
 return 0;
}
