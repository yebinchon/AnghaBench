
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg {int dummy; } ;
struct ceph_mds_session {int s_mds; int s_con; int s_seq; int s_renew_requested; int s_state; } ;
struct ceph_mds_client {int mdsmap; } ;


 int CEPH_MDS_SESSION_OPENING ;
 int ENOMEM ;
 int ceph_con_send (int *,struct ceph_msg*) ;
 int ceph_mds_state_name (int) ;
 int ceph_mdsmap_get_state (int ,int) ;
 struct ceph_msg* create_session_open_msg (struct ceph_mds_client*,int ) ;
 int dout (char*,int,int ) ;
 int jiffies ;

__attribute__((used)) static int __open_session(struct ceph_mds_client *mdsc,
     struct ceph_mds_session *session)
{
 struct ceph_msg *msg;
 int mstate;
 int mds = session->s_mds;


 mstate = ceph_mdsmap_get_state(mdsc->mdsmap, mds);
 dout("open_session to mds%d (%s)\n", mds,
      ceph_mds_state_name(mstate));
 session->s_state = CEPH_MDS_SESSION_OPENING;
 session->s_renew_requested = jiffies;


 msg = create_session_open_msg(mdsc, session->s_seq);
 if (!msg)
  return -ENOMEM;
 ceph_con_send(&session->s_con, msg);
 return 0;
}
