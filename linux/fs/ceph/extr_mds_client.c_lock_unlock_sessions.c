
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_mutex; } ;
struct ceph_mds_client {int max_sessions; int mutex; } ;


 struct ceph_mds_session* __ceph_lookup_mds_session (struct ceph_mds_client*,int) ;
 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void lock_unlock_sessions(struct ceph_mds_client *mdsc)
{
 int i;

 mutex_lock(&mdsc->mutex);
 for (i = 0; i < mdsc->max_sessions; i++) {
  struct ceph_mds_session *s = __ceph_lookup_mds_session(mdsc, i);
  if (!s)
   continue;
  mutex_unlock(&mdsc->mutex);
  mutex_lock(&s->s_mutex);
  mutex_unlock(&s->s_mutex);
  ceph_put_mds_session(s);
  mutex_lock(&mdsc->mutex);
 }
 mutex_unlock(&mdsc->mutex);
}
