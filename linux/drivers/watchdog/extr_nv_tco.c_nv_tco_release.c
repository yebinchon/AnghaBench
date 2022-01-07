
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int pr_crit (char*) ;
 int tco_expect_close ;
 int tco_timer_keepalive () ;
 int tco_timer_stop () ;
 int timer_alive ;

__attribute__((used)) static int nv_tco_release(struct inode *inode, struct file *file)
{

 if (tco_expect_close == 42) {
  tco_timer_stop();
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  tco_timer_keepalive();
 }
 clear_bit(0, &timer_alive);
 tco_expect_close = 0;
 return 0;
}
