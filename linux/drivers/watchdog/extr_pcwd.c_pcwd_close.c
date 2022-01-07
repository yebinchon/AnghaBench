
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int open_allowed ;
 int pcwd_keepalive () ;
 int pcwd_stop () ;
 int pr_crit (char*) ;

__attribute__((used)) static int pcwd_close(struct inode *inode, struct file *file)
{
 if (expect_close == 42)
  pcwd_stop();
 else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  pcwd_keepalive();
 }
 expect_close = 0;
 clear_bit(0, &open_allowed);
 return 0;
}
