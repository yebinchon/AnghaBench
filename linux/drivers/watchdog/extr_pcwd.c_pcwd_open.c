
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 scalar_t__ nowayout ;
 int open_allowed ;
 int pcwd_keepalive () ;
 int pcwd_start () ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int pcwd_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &open_allowed))
  return -EBUSY;
 if (nowayout)
  __module_get(THIS_MODULE);

 pcwd_start();
 pcwd_keepalive();
 return stream_open(inode, file);
}
