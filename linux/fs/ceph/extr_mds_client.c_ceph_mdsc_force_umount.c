
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {scalar_t__ s_state; int s_mutex; int s_waiting; } ;
struct ceph_mds_client {int max_sessions; int mutex; int waiting_for_map; } ;


 scalar_t__ CEPH_MDS_SESSION_CLOSING ;
 scalar_t__ CEPH_MDS_SESSION_REJECTED ;
 struct ceph_mds_session* __ceph_lookup_mds_session (struct ceph_mds_client*,int) ;
 int __close_session (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int __unregister_session (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int __wake_requests (struct ceph_mds_client*,int *) ;
 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int cleanup_session_requests (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int dout (char*) ;
 int kick_requests (struct ceph_mds_client*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_session_caps (struct ceph_mds_session*) ;

void ceph_mdsc_force_umount(struct ceph_mds_client *mdsc)
{
 struct ceph_mds_session *session;
 int mds;

 dout("force umount\n");

 mutex_lock(&mdsc->mutex);
 for (mds = 0; mds < mdsc->max_sessions; mds++) {
  session = __ceph_lookup_mds_session(mdsc, mds);
  if (!session)
   continue;

  if (session->s_state == CEPH_MDS_SESSION_REJECTED)
   __unregister_session(mdsc, session);
  __wake_requests(mdsc, &session->s_waiting);
  mutex_unlock(&mdsc->mutex);

  mutex_lock(&session->s_mutex);
  __close_session(mdsc, session);
  if (session->s_state == CEPH_MDS_SESSION_CLOSING) {
   cleanup_session_requests(mdsc, session);
   remove_session_caps(session);
  }
  mutex_unlock(&session->s_mutex);
  ceph_put_mds_session(session);

  mutex_lock(&mdsc->mutex);
  kick_requests(mdsc, mds);
 }
 __wake_requests(mdsc, &mdsc->waiting_for_map);
 mutex_unlock(&mdsc->mutex);
}
