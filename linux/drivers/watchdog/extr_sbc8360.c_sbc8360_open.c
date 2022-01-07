
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
 int sbc8360_activate () ;
 int sbc8360_is_open ;
 int sbc8360_ping () ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int sbc8360_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &sbc8360_is_open))
  return -EBUSY;
 if (nowayout)
  __module_get(THIS_MODULE);


 sbc8360_activate();
 sbc8360_ping();
 return stream_open(inode, file);
}
