
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {int d_lock; struct dentry* d_parent; TYPE_1__ d_name; } ;
struct ceph_vino {int dummy; } ;
struct ceph_mds_session {int dummy; } ;
struct ceph_mds_reply_lease {int dummy; } ;


 int __update_dentry_lease (struct inode*,struct dentry*,struct ceph_mds_reply_lease*,struct ceph_mds_session*,unsigned long,struct ceph_mds_session**) ;
 int ceph_ino_compare (struct inode*,struct ceph_vino*) ;
 int ceph_put_mds_session (struct ceph_mds_session*) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 scalar_t__ memcmp (int ,char*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void update_dentry_lease_careful(struct dentry *dentry,
     struct ceph_mds_reply_lease *lease,
     struct ceph_mds_session *session,
     unsigned long from_time,
     char *dname, u32 dname_len,
     struct ceph_vino *pdvino,
     struct ceph_vino *ptvino)

{
 struct inode *dir;
 struct ceph_mds_session *old_lease_session = ((void*)0);

 spin_lock(&dentry->d_lock);

 if (dentry->d_name.len != dname_len ||
     memcmp(dentry->d_name.name, dname, dname_len))
  goto out_unlock;

 dir = d_inode(dentry->d_parent);

 if (!ceph_ino_compare(dir, pdvino))
  goto out_unlock;



 if (ptvino) {
  if (d_really_is_negative(dentry))
   goto out_unlock;
  if (!ceph_ino_compare(d_inode(dentry), ptvino))
   goto out_unlock;
 } else {
  if (d_really_is_positive(dentry))
   goto out_unlock;
 }

 __update_dentry_lease(dir, dentry, lease, session,
         from_time, &old_lease_session);
out_unlock:
 spin_unlock(&dentry->d_lock);
 if (old_lease_session)
  ceph_put_mds_session(old_lease_session);
}
