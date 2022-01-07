
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int dummy; } ;
struct ceph_mds_client {int mutex; } ;


 int __open_export_target_sessions (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ceph_mdsc_open_export_target_sessions(struct ceph_mds_client *mdsc,
        struct ceph_mds_session *session)
{
 mutex_lock(&mdsc->mutex);
 __open_export_target_sessions(mdsc, session);
 mutex_unlock(&mdsc->mutex);
}
