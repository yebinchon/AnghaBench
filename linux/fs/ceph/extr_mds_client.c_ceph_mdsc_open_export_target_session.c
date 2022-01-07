
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int dummy; } ;
struct ceph_mds_client {int mutex; } ;


 struct ceph_mds_session* __open_export_target_session (struct ceph_mds_client*,int) ;
 int dout (char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct ceph_mds_session *
ceph_mdsc_open_export_target_session(struct ceph_mds_client *mdsc, int target)
{
 struct ceph_mds_session *session;

 dout("open_export_target_session to mds%d\n", target);

 mutex_lock(&mdsc->mutex);
 session = __open_export_target_session(mdsc, target);
 mutex_unlock(&mdsc->mutex);

 return session;
}
