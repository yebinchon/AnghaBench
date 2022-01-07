
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ceph_snap_realm {int inode; struct ceph_snap_realm* parent; int inodes_with_caps_lock; } ;
struct ceph_mds_client {int snap_rwsem; } ;
struct ceph_inode_info {struct ceph_snap_realm* i_snap_realm; } ;


 scalar_t__ CEPH_NOSNAP ;
 int EAGAIN ;
 struct ceph_snap_realm* ERR_PTR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (struct inode*) ;
 int __ceph_has_any_quota (struct ceph_inode_info*) ;
 int ceph_async_iput (struct inode*) ;
 int ceph_get_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_put_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 scalar_t__ ceph_snap (struct inode*) ;
 int ceph_vinop (struct inode*) ;
 int down_read (int *) ;
 struct inode* igrab (int) ;
 struct inode* lookup_quotarealm_inode (struct ceph_mds_client*,int ,struct ceph_snap_realm*) ;
 int pr_err_ratelimited (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

__attribute__((used)) static struct ceph_snap_realm *get_quota_realm(struct ceph_mds_client *mdsc,
            struct inode *inode, bool retry)
{
 struct ceph_inode_info *ci = ((void*)0);
 struct ceph_snap_realm *realm, *next;
 struct inode *in;
 bool has_quota;

 if (ceph_snap(inode) != CEPH_NOSNAP)
  return ((void*)0);

restart:
 realm = ceph_inode(inode)->i_snap_realm;
 if (realm)
  ceph_get_snap_realm(mdsc, realm);
 else
  pr_err_ratelimited("get_quota_realm: ino (%llx.%llx) "
       "null i_snap_realm\n", ceph_vinop(inode));
 while (realm) {
  bool has_inode;

  spin_lock(&realm->inodes_with_caps_lock);
  has_inode = realm->inode;
  in = has_inode ? igrab(realm->inode) : ((void*)0);
  spin_unlock(&realm->inodes_with_caps_lock);
  if (has_inode && !in)
   break;
  if (!in) {
   up_read(&mdsc->snap_rwsem);
   in = lookup_quotarealm_inode(mdsc, inode->i_sb, realm);
   down_read(&mdsc->snap_rwsem);
   if (IS_ERR_OR_NULL(in))
    break;
   ceph_put_snap_realm(mdsc, realm);
   if (!retry)
    return ERR_PTR(-EAGAIN);
   goto restart;
  }

  ci = ceph_inode(in);
  has_quota = __ceph_has_any_quota(ci);

  ceph_async_iput(in);

  next = realm->parent;
  if (has_quota || !next)
         return realm;

  ceph_get_snap_realm(mdsc, next);
  ceph_put_snap_realm(mdsc, realm);
  realm = next;
 }
 if (realm)
  ceph_put_snap_realm(mdsc, realm);

 return ((void*)0);
}
