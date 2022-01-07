
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg {int dummy; } ;
struct ceph_mds_session {int s_con; int s_renew_seq; int s_mds; int s_renew_requested; int s_cap_ttl; } ;
struct ceph_mds_client {int mdsmap; } ;


 int CEPH_MDS_STATE_RECONNECT ;
 int CEPH_SESSION_REQUEST_RENEWCAPS ;
 int ENOMEM ;
 int ceph_con_send (int *,struct ceph_msg*) ;
 int ceph_mds_state_name (int) ;
 int ceph_mdsmap_get_state (int ,int ) ;
 struct ceph_msg* create_session_msg (int ,int ) ;
 int dout (char*,int ,int ) ;
 int jiffies ;
 int pr_info (char*,int ) ;
 scalar_t__ time_after_eq (int ,int ) ;

__attribute__((used)) static int send_renew_caps(struct ceph_mds_client *mdsc,
      struct ceph_mds_session *session)
{
 struct ceph_msg *msg;
 int state;

 if (time_after_eq(jiffies, session->s_cap_ttl) &&
     time_after_eq(session->s_cap_ttl, session->s_renew_requested))
  pr_info("mds%d caps stale\n", session->s_mds);
 session->s_renew_requested = jiffies;



 state = ceph_mdsmap_get_state(mdsc->mdsmap, session->s_mds);
 if (state < CEPH_MDS_STATE_RECONNECT) {
  dout("send_renew_caps ignoring mds%d (%s)\n",
       session->s_mds, ceph_mds_state_name(state));
  return 0;
 }

 dout("send_renew_caps to mds%d (%s)\n", session->s_mds,
  ceph_mds_state_name(state));
 msg = create_session_msg(CEPH_SESSION_REQUEST_RENEWCAPS,
     ++session->s_renew_seq);
 if (!msg)
  return -ENOMEM;
 ceph_con_send(&session->s_con, msg);
 return 0;
}
