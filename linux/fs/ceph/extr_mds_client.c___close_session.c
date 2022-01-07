
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {scalar_t__ s_state; } ;
struct ceph_mds_client {int dummy; } ;


 scalar_t__ CEPH_MDS_SESSION_CLOSING ;
 int request_close_session (struct ceph_mds_client*,struct ceph_mds_session*) ;

__attribute__((used)) static int __close_session(struct ceph_mds_client *mdsc,
    struct ceph_mds_session *session)
{
 if (session->s_state >= CEPH_MDS_SESSION_CLOSING)
  return 0;
 session->s_state = CEPH_MDS_SESSION_CLOSING;
 return request_close_session(mdsc, session);
}
