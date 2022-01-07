
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int del_timer (int *) ;
 int mixcomwd_opened ;
 int mixcomwd_ping () ;
 int mixcomwd_timer ;
 scalar_t__ mixcomwd_timer_alive ;
 scalar_t__ nowayout ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int mixcomwd_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &mixcomwd_opened))
  return -EBUSY;

 mixcomwd_ping();

 if (nowayout)





  __module_get(THIS_MODULE);
 else {
  if (mixcomwd_timer_alive) {
   del_timer(&mixcomwd_timer);
   mixcomwd_timer_alive = 0;
  }
 }
 return stream_open(inode, file);
}
