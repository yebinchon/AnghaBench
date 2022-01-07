
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int __raw_writeb (int,int ) ;
 int sbwdog_gate ;
 int sbwdog_set (int ,int ) ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int timeout ;
 int user_dog ;

__attribute__((used)) static int sbwdog_open(struct inode *inode, struct file *file)
{
 stream_open(inode, file);
 if (test_and_set_bit(0, &sbwdog_gate))
  return -EBUSY;
 __module_get(THIS_MODULE);




 sbwdog_set(user_dog, timeout);
 __raw_writeb(1, user_dog);

 return 0;
}
