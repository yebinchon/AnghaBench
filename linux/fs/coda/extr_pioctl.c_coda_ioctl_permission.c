
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EACCES ;
 int MAY_EXEC ;

__attribute__((used)) static int coda_ioctl_permission(struct inode *inode, int mask)
{
 return (mask & MAY_EXEC) ? -EACCES : 0;
}
