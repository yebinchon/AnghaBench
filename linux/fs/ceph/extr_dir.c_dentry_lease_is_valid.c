
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dentry {int d_lock; } ;
struct ceph_mds_session {int dummy; } ;
struct ceph_dentry_info {int lease_renew_from; scalar_t__ lease_renew_after; int lease_seq; int lease_session; } ;


 int CEPH_MDS_LEASE_RENEW ;
 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 scalar_t__ __dentry_lease_is_valid (struct ceph_dentry_info*) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 struct ceph_mds_session* ceph_get_mds_session (int ) ;
 int ceph_mdsc_lease_send_msg (struct ceph_mds_session*,struct dentry*,int ,int ) ;
 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int dout (char*,struct dentry*,int) ;
 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static int dentry_lease_is_valid(struct dentry *dentry, unsigned int flags)
{
 struct ceph_dentry_info *di;
 struct ceph_mds_session *session = ((void*)0);
 u32 seq = 0;
 int valid = 0;

 spin_lock(&dentry->d_lock);
 di = ceph_dentry(dentry);
 if (di && __dentry_lease_is_valid(di)) {
  valid = 1;

  if (di->lease_renew_after &&
      time_after(jiffies, di->lease_renew_after)) {





   if (flags & LOOKUP_RCU) {
    valid = -ECHILD;
   } else {
    session = ceph_get_mds_session(di->lease_session);
    seq = di->lease_seq;
    di->lease_renew_after = 0;
    di->lease_renew_from = jiffies;
   }
  }
 }
 spin_unlock(&dentry->d_lock);

 if (session) {
  ceph_mdsc_lease_send_msg(session, dentry,
      CEPH_MDS_LEASE_RENEW, seq);
  ceph_put_mds_session(session);
 }
 dout("dentry_lease_is_valid - dentry %p = %d\n", dentry, valid);
 return valid;
}
