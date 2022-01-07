
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kstatfs {int f_blocks; int f_bfree; int f_bavail; } ;
struct inode {int dummy; } ;
struct ceph_snap_realm {int inodes_with_caps_lock; scalar_t__ inode; } ;
struct ceph_mds_client {int snap_rwsem; } ;
struct ceph_inode_info {int i_max_bytes; int i_rbytes; int i_ceph_lock; } ;
struct ceph_fs_client {TYPE_1__* sb; struct ceph_mds_client* mdsc; } ;
struct TYPE_2__ {int s_root; } ;


 int CEPH_BLOCK_SHIFT ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_put_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 int d_inode (int ) ;
 int down_read (int *) ;
 struct ceph_snap_realm* get_quota_realm (struct ceph_mds_client*,int ,int) ;
 struct inode* igrab (scalar_t__) ;
 int iput (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

bool ceph_quota_update_statfs(struct ceph_fs_client *fsc, struct kstatfs *buf)
{
 struct ceph_mds_client *mdsc = fsc->mdsc;
 struct ceph_inode_info *ci;
 struct ceph_snap_realm *realm;
 struct inode *in;
 u64 total = 0, used, free;
 bool is_updated = 0;

 down_read(&mdsc->snap_rwsem);
 realm = get_quota_realm(mdsc, d_inode(fsc->sb->s_root), 1);
 up_read(&mdsc->snap_rwsem);
 if (!realm)
  return 0;

 spin_lock(&realm->inodes_with_caps_lock);
 in = realm->inode ? igrab(realm->inode) : ((void*)0);
 spin_unlock(&realm->inodes_with_caps_lock);
 if (in) {
  ci = ceph_inode(in);
  spin_lock(&ci->i_ceph_lock);
  if (ci->i_max_bytes) {
   total = ci->i_max_bytes >> CEPH_BLOCK_SHIFT;
   used = ci->i_rbytes >> CEPH_BLOCK_SHIFT;



   free = total > used ? total - used : 0;
  }
  spin_unlock(&ci->i_ceph_lock);
  if (total) {
   buf->f_blocks = total;
   buf->f_bfree = free;
   buf->f_bavail = free;
   is_updated = 1;
  }
  iput(in);
 }
 ceph_put_snap_realm(mdsc, realm);

 return is_updated;
}
