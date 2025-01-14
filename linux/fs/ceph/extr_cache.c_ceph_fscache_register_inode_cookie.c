
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct inode {TYPE_1__ i_mtime; int i_mode; } ;
struct ceph_inode_info {int i_vino; scalar_t__ fscache; int i_version; } ;
struct ceph_fs_client {int fscache; } ;
struct ceph_aux_inode {int mtime_nsec; int mtime_sec; int version; } ;
typedef int aux ;


 int I_MUTEX_CHILD ;
 int S_ISREG (int ) ;
 int ceph_fscache_inode_object_def ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 scalar_t__ fscache_acquire_cookie (int ,int *,int *,int,struct ceph_aux_inode*,int,struct ceph_inode_info*,int ,int) ;
 int i_size_read (struct inode*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 int memset (struct ceph_aux_inode*,int ,int) ;

void ceph_fscache_register_inode_cookie(struct inode *inode)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 struct ceph_aux_inode aux;


 if (!fsc->fscache)
  return;


 if (!S_ISREG(inode->i_mode))
  return;

 inode_lock_nested(inode, I_MUTEX_CHILD);
 if (!ci->fscache) {
  memset(&aux, 0, sizeof(aux));
  aux.version = ci->i_version;
  aux.mtime_sec = inode->i_mtime.tv_sec;
  aux.mtime_nsec = inode->i_mtime.tv_nsec;
  ci->fscache = fscache_acquire_cookie(fsc->fscache,
           &ceph_fscache_inode_object_def,
           &ci->i_vino, sizeof(ci->i_vino),
           &aux, sizeof(aux),
           ci, i_size_read(inode), 0);
 }
 inode_unlock(inode);
}
