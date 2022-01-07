
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int acq_is_open ;
 int acq_keepalive () ;
 int acq_stop () ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 int pr_crit (char*) ;

__attribute__((used)) static int acq_close(struct inode *inode, struct file *file)
{
 if (expect_close == 42) {
  acq_stop();
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  acq_keepalive();
 }
 clear_bit(0, &acq_is_open);
 expect_close = 0;
 return 0;
}
