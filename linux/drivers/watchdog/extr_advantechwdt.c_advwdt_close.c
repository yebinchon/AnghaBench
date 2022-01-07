
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int adv_expect_close ;
 int advwdt_disable () ;
 int advwdt_is_open ;
 int advwdt_ping () ;
 int clear_bit (int ,int *) ;
 int pr_crit (char*) ;

__attribute__((used)) static int advwdt_close(struct inode *inode, struct file *file)
{
 if (adv_expect_close == 42) {
  advwdt_disable();
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  advwdt_ping();
 }
 clear_bit(0, &advwdt_is_open);
 adv_expect_close = 0;
 return 0;
}
