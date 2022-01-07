
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int expect_close; int opened; } ;


 int clear_bit (int ,int *) ;
 int nowayout ;
 int pr_crit (char*) ;
 TYPE_1__ watchdog ;
 int watchdog_keepalive () ;
 int watchdog_stop () ;

__attribute__((used)) static int watchdog_release(struct inode *inode, struct file *file)
{
 clear_bit(0, &watchdog.opened);

 if (!watchdog.expect_close) {
  watchdog_keepalive();
  pr_crit("Unexpected close, not stopping watchdog!\n");
 } else if (!nowayout) {
  watchdog_stop();
 }
 return 0;
}
