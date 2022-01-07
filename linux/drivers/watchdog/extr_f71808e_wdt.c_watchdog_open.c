
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ expect_close; int opened; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int clear_bit (int ,int *) ;
 scalar_t__ nowayout ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 TYPE_1__ watchdog ;
 int watchdog_start () ;

__attribute__((used)) static int watchdog_open(struct inode *inode, struct file *file)
{
 int err;


 if (test_and_set_bit(0, &watchdog.opened))
  return -EBUSY;

 err = watchdog_start();
 if (err) {
  clear_bit(0, &watchdog.opened);
  return err;
 }

 if (nowayout)
  __module_get(THIS_MODULE);

 watchdog.expect_close = 0;
 return stream_open(inode, file);
}
