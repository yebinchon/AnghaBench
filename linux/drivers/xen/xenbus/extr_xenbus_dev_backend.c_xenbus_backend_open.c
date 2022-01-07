
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int capable (int ) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int xenbus_backend_open(struct inode *inode, struct file *filp)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 return nonseekable_open(inode, filp);
}
