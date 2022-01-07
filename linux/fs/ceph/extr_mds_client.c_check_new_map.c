
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mdsmap {int m_num_mds; int m_epoch; } ;
struct ceph_mds_session {scalar_t__ s_state; int s_mds; int s_mutex; int s_con; int s_waiting; } ;
struct ceph_mds_client {int max_sessions; struct ceph_mds_session** sessions; int mutex; } ;
struct ceph_entity_addr {int dummy; } ;


 scalar_t__ CEPH_MDS_SESSION_CLOSING ;
 scalar_t__ CEPH_MDS_SESSION_HUNG ;
 scalar_t__ CEPH_MDS_SESSION_OPEN ;
 scalar_t__ CEPH_MDS_SESSION_RESTARTING ;
 int CEPH_MDS_STATE_ACTIVE ;
 int CEPH_MDS_STATE_CREATING ;
 int CEPH_MDS_STATE_RECONNECT ;
 int CEPH_MDS_STATE_STARTING ;
 int RECONNECT ;
 int __open_export_target_sessions (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int __unregister_session (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int __wake_requests (struct ceph_mds_client*,int *) ;
 int ceph_con_close (int *) ;
 int ceph_kick_flushing_caps (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int ceph_mds_state_name (int) ;
 int ceph_mdsmap_get_addr (struct ceph_mdsmap*,int) ;
 int ceph_mdsmap_get_state (struct ceph_mdsmap*,int) ;
 scalar_t__ ceph_mdsmap_is_laggy (struct ceph_mdsmap*,int) ;
 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int ceph_session_state_name (scalar_t__) ;
 int cleanup_session_requests (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int dout (char*,int,...) ;
 int get_session (struct ceph_mds_session*) ;
 int kick_requests (struct ceph_mds_client*,int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ) ;
 int remove_session_caps (struct ceph_mds_session*) ;
 int send_mds_reconnect (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int wake_up_session_caps (struct ceph_mds_session*,int ) ;

__attribute__((used)) static void check_new_map(struct ceph_mds_client *mdsc,
     struct ceph_mdsmap *newmap,
     struct ceph_mdsmap *oldmap)
{
 int i;
 int oldstate, newstate;
 struct ceph_mds_session *s;

 dout("check_new_map new %u old %u\n",
      newmap->m_epoch, oldmap->m_epoch);

 for (i = 0; i < oldmap->m_num_mds && i < mdsc->max_sessions; i++) {
  if (!mdsc->sessions[i])
   continue;
  s = mdsc->sessions[i];
  oldstate = ceph_mdsmap_get_state(oldmap, i);
  newstate = ceph_mdsmap_get_state(newmap, i);

  dout("check_new_map mds%d state %s%s -> %s%s (session %s)\n",
       i, ceph_mds_state_name(oldstate),
       ceph_mdsmap_is_laggy(oldmap, i) ? " (laggy)" : "",
       ceph_mds_state_name(newstate),
       ceph_mdsmap_is_laggy(newmap, i) ? " (laggy)" : "",
       ceph_session_state_name(s->s_state));

  if (i >= newmap->m_num_mds) {

   get_session(s);
   __unregister_session(mdsc, s);
   __wake_requests(mdsc, &s->s_waiting);
   mutex_unlock(&mdsc->mutex);

   mutex_lock(&s->s_mutex);
   cleanup_session_requests(mdsc, s);
   remove_session_caps(s);
   mutex_unlock(&s->s_mutex);

   ceph_put_mds_session(s);

   mutex_lock(&mdsc->mutex);
   kick_requests(mdsc, i);
   continue;
  }

  if (memcmp(ceph_mdsmap_get_addr(oldmap, i),
      ceph_mdsmap_get_addr(newmap, i),
      sizeof(struct ceph_entity_addr))) {

   mutex_unlock(&mdsc->mutex);
   mutex_lock(&s->s_mutex);
   mutex_lock(&mdsc->mutex);
   ceph_con_close(&s->s_con);
   mutex_unlock(&s->s_mutex);
   s->s_state = CEPH_MDS_SESSION_RESTARTING;
  } else if (oldstate == newstate) {
   continue;
  }




  if (s->s_state == CEPH_MDS_SESSION_RESTARTING &&
      newstate >= CEPH_MDS_STATE_RECONNECT) {
   mutex_unlock(&mdsc->mutex);
   send_mds_reconnect(mdsc, s);
   mutex_lock(&mdsc->mutex);
  }




  if (oldstate < CEPH_MDS_STATE_ACTIVE &&
      newstate >= CEPH_MDS_STATE_ACTIVE) {
   if (oldstate != CEPH_MDS_STATE_CREATING &&
       oldstate != CEPH_MDS_STATE_STARTING)
    pr_info("mds%d recovery completed\n", s->s_mds);
   kick_requests(mdsc, i);
   ceph_kick_flushing_caps(mdsc, s);
   wake_up_session_caps(s, RECONNECT);
  }
 }

 for (i = 0; i < newmap->m_num_mds && i < mdsc->max_sessions; i++) {
  s = mdsc->sessions[i];
  if (!s)
   continue;
  if (!ceph_mdsmap_is_laggy(newmap, i))
   continue;
  if (s->s_state == CEPH_MDS_SESSION_OPEN ||
      s->s_state == CEPH_MDS_SESSION_HUNG ||
      s->s_state == CEPH_MDS_SESSION_CLOSING) {
   dout(" connecting to export targets of laggy mds%d\n",
        i);
   __open_export_target_sessions(mdsc, s);
  }
 }
}
