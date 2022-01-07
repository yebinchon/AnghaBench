
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int CEPH_CAP_AUTH_SHARED ;
 int ECHILD ;
 int MAY_NOT_BLOCK ;
 int ceph_do_getattr (struct inode*,int ,int) ;
 int generic_permission (struct inode*,int) ;

int ceph_permission(struct inode *inode, int mask)
{
 int err;

 if (mask & MAY_NOT_BLOCK)
  return -ECHILD;

 err = ceph_do_getattr(inode, CEPH_CAP_AUTH_SHARED, 0);

 if (!err)
  err = generic_permission(inode, mask);
 return err;
}
