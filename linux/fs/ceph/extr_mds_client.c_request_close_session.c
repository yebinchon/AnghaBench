
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg {int dummy; } ;
struct ceph_mds_session {int s_con; int s_seq; int s_state; int s_mds; } ;
struct ceph_mds_client {int dummy; } ;


 int CEPH_SESSION_REQUEST_CLOSE ;
 int ENOMEM ;
 int ceph_con_send (int *,struct ceph_msg*) ;
 int ceph_session_state_name (int ) ;
 struct ceph_msg* create_session_msg (int ,int ) ;
 int dout (char*,int ,int ,int ) ;

__attribute__((used)) static int request_close_session(struct ceph_mds_client *mdsc,
     struct ceph_mds_session *session)
{
 struct ceph_msg *msg;

 dout("request_close_session mds%d state %s seq %lld\n",
      session->s_mds, ceph_session_state_name(session->s_state),
      session->s_seq);
 msg = create_session_msg(CEPH_SESSION_REQUEST_CLOSE, session->s_seq);
 if (!msg)
  return -ENOMEM;
 ceph_con_send(&session->s_con, msg);
 return 1;
}
