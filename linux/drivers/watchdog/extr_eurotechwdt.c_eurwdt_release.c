
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int eur_expect_close ;
 int eurwdt_disable_timer () ;
 int eurwdt_is_open ;
 int eurwdt_ping () ;
 int pr_crit (char*) ;

__attribute__((used)) static int eurwdt_release(struct inode *inode, struct file *file)
{
 if (eur_expect_close == 42)
  eurwdt_disable_timer();
 else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  eurwdt_ping();
 }
 clear_bit(0, &eurwdt_is_open);
 eur_expect_close = 0;
 return 0;
}
