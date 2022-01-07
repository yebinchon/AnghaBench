
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_release ;
 int is_active ;
 int pcipcwd_keepalive () ;
 int pcipcwd_stop () ;
 int pr_crit (char*) ;

__attribute__((used)) static int pcipcwd_release(struct inode *inode, struct file *file)
{



 if (expect_release == 42) {
  pcipcwd_stop();
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  pcipcwd_keepalive();
 }
 expect_release = 0;
 clear_bit(0, &is_active);
 return 0;
}
