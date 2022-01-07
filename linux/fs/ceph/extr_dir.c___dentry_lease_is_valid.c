
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ceph_mds_session {scalar_t__ s_cap_gen; unsigned long s_cap_ttl; int s_gen_ttl_lock; } ;
struct ceph_dentry_info {scalar_t__ lease_gen; unsigned long time; struct ceph_mds_session* lease_session; } ;


 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (int ,unsigned long) ;

__attribute__((used)) static bool __dentry_lease_is_valid(struct ceph_dentry_info *di)
{
 struct ceph_mds_session *session;

 if (!di->lease_gen)
  return 0;

 session = di->lease_session;
 if (session) {
  u32 gen;
  unsigned long ttl;

  spin_lock(&session->s_gen_ttl_lock);
  gen = session->s_cap_gen;
  ttl = session->s_cap_ttl;
  spin_unlock(&session->s_gen_ttl_lock);

  if (di->lease_gen == gen &&
      time_before(jiffies, ttl) &&
      time_before(jiffies, di->time))
   return 1;
 }
 di->lease_gen = 0;
 return 0;
}
