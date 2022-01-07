
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ali_expect_release ;
 int ali_is_open ;
 int ali_keepalive () ;
 int ali_stop () ;
 int clear_bit (int ,int *) ;
 int pr_crit (char*) ;

__attribute__((used)) static int ali_release(struct inode *inode, struct file *file)
{



 if (ali_expect_release == 42)
  ali_stop();
 else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  ali_keepalive();
 }
 clear_bit(0, &ali_is_open);
 ali_expect_release = 0;
 return 0;
}
