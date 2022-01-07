
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int capable (int ) ;

__attribute__((used)) static int megasas_mgmt_open(struct inode *inode, struct file *filep)
{



 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 return 0;
}
