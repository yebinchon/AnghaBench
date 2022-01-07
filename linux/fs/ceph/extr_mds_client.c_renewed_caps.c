
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mds_session {int s_cap_lock; scalar_t__ s_cap_ttl; int s_mds; scalar_t__ s_renew_requested; } ;
struct ceph_mds_client {TYPE_1__* mdsmap; } ;
struct TYPE_2__ {int m_session_timeout; } ;


 int HZ ;
 int RENEWCAPS ;
 int dout (char*,int ,scalar_t__,char*,char*) ;
 int jiffies ;
 int pr_info (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after_eq (int ,scalar_t__) ;
 scalar_t__ time_before (int ,scalar_t__) ;
 int wake_up_session_caps (struct ceph_mds_session*,int ) ;

__attribute__((used)) static void renewed_caps(struct ceph_mds_client *mdsc,
    struct ceph_mds_session *session, int is_renew)
{
 int was_stale;
 int wake = 0;

 spin_lock(&session->s_cap_lock);
 was_stale = is_renew && time_after_eq(jiffies, session->s_cap_ttl);

 session->s_cap_ttl = session->s_renew_requested +
  mdsc->mdsmap->m_session_timeout*HZ;

 if (was_stale) {
  if (time_before(jiffies, session->s_cap_ttl)) {
   pr_info("mds%d caps renewed\n", session->s_mds);
   wake = 1;
  } else {
   pr_info("mds%d caps still stale\n", session->s_mds);
  }
 }
 dout("renewed_caps mds%d ttl now %lu, was %s, now %s\n",
      session->s_mds, session->s_cap_ttl, was_stale ? "stale" : "fresh",
      time_before(jiffies, session->s_cap_ttl) ? "stale" : "fresh");
 spin_unlock(&session->s_cap_lock);

 if (wake)
  wake_up_session_caps(session, RENEWCAPS);
}
