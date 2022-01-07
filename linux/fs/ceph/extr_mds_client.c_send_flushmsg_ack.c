
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_msg {int dummy; } ;
struct ceph_mds_session {int s_con; int s_state; int s_mds; } ;
struct ceph_mds_client {int dummy; } ;


 int CEPH_SESSION_FLUSHMSG_ACK ;
 int ENOMEM ;
 int ceph_con_send (int *,struct ceph_msg*) ;
 int ceph_session_state_name (int ) ;
 struct ceph_msg* create_session_msg (int ,int ) ;
 int dout (char*,int ,int ,int ) ;

__attribute__((used)) static int send_flushmsg_ack(struct ceph_mds_client *mdsc,
        struct ceph_mds_session *session, u64 seq)
{
 struct ceph_msg *msg;

 dout("send_flushmsg_ack to mds%d (%s)s seq %lld\n",
      session->s_mds, ceph_session_state_name(session->s_state), seq);
 msg = create_session_msg(CEPH_SESSION_FLUSHMSG_ACK, seq);
 if (!msg)
  return -ENOMEM;
 ceph_con_send(&session->s_con, msg);
 return 0;
}
