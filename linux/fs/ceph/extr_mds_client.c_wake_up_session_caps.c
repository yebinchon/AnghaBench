
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_mds; } ;


 int ceph_iterate_session_caps (struct ceph_mds_session*,int ,void*) ;
 int dout (char*,struct ceph_mds_session*,int ) ;
 int wake_up_session_cb ;

__attribute__((used)) static void wake_up_session_caps(struct ceph_mds_session *session, int ev)
{
 dout("wake_up_session_caps %p mds%d\n", session, session->s_mds);
 ceph_iterate_session_caps(session, wake_up_session_cb,
      (void *)(unsigned long)ev);
}
