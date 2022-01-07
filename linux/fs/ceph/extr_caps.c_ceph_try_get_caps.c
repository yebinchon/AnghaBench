
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int BUG_ON (int) ;
 int CEPH_CAP_FILE_CACHE ;
 int CEPH_CAP_FILE_LAZYIO ;
 int CEPH_CAP_FILE_RD ;
 int CEPH_CAP_FILE_SHARED ;
 int EAGAIN ;
 int NON_BLOCKING ;
 int ceph_pool_perm_check (struct inode*,int) ;
 int try_get_cap_refs (struct inode*,int,int,int ,int ,int*) ;

int ceph_try_get_caps(struct inode *inode, int need, int want,
        bool nonblock, int *got)
{
 int ret;

 BUG_ON(need & ~CEPH_CAP_FILE_RD);
 BUG_ON(want & ~(CEPH_CAP_FILE_CACHE|CEPH_CAP_FILE_LAZYIO|CEPH_CAP_FILE_SHARED));
 ret = ceph_pool_perm_check(inode, need);
 if (ret < 0)
  return ret;

 ret = try_get_cap_refs(inode, need, want, 0,
          (nonblock ? NON_BLOCKING : 0), got);
 return ret == -EAGAIN ? 0 : ret;
}
