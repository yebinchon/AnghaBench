
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ WDRTAS_MAGIC_CHAR ;
 int atomic_dec (int *) ;
 int pr_warn (char*) ;
 scalar_t__ wdrtas_expect_close ;
 int wdrtas_miscdev_open ;
 int wdrtas_timer_keepalive () ;
 int wdrtas_timer_stop () ;

__attribute__((used)) static int wdrtas_close(struct inode *inode, struct file *file)
{

 if (wdrtas_expect_close == WDRTAS_MAGIC_CHAR)
  wdrtas_timer_stop();
 else {
  pr_warn("got unexpected close. Watchdog not stopped.\n");
  wdrtas_timer_keepalive();
 }

 wdrtas_expect_close = 0;
 atomic_dec(&wdrtas_miscdev_open);
 return 0;
}
