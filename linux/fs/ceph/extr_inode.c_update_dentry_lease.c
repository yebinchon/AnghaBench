
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_lock; } ;
struct ceph_mds_session {int dummy; } ;
struct ceph_mds_reply_lease {int dummy; } ;


 int __update_dentry_lease (struct inode*,struct dentry*,struct ceph_mds_reply_lease*,struct ceph_mds_session*,unsigned long,struct ceph_mds_session**) ;
 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void update_dentry_lease(struct inode *dir, struct dentry *dentry,
     struct ceph_mds_reply_lease *lease,
     struct ceph_mds_session *session,
     unsigned long from_time)
{
 struct ceph_mds_session *old_lease_session = ((void*)0);
 spin_lock(&dentry->d_lock);
 __update_dentry_lease(dir, dentry, lease, session, from_time,
         &old_lease_session);
 spin_unlock(&dentry->d_lock);
 if (old_lease_session)
  ceph_put_mds_session(old_lease_session);
}
