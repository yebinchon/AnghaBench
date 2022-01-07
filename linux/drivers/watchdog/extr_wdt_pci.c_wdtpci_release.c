
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int open_lock ;
 int pr_crit (char*) ;
 int wdtpci_ping () ;
 int wdtpci_stop () ;

__attribute__((used)) static int wdtpci_release(struct inode *inode, struct file *file)
{
 if (expect_close == 42) {
  wdtpci_stop();
 } else {
  pr_crit("Unexpected close, not stopping timer!\n");
  wdtpci_ping();
 }
 expect_close = 0;
 clear_bit(0, &open_lock);
 return 0;
}
