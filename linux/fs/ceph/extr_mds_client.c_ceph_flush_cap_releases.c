
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mds_session {int s_cap_release_work; } ;
struct ceph_mds_client {TYPE_1__* fsc; scalar_t__ stopping; } ;
struct TYPE_2__ {int cap_wq; } ;


 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int dout (char*) ;
 int get_session (struct ceph_mds_session*) ;
 scalar_t__ queue_work (int ,int *) ;

void ceph_flush_cap_releases(struct ceph_mds_client *mdsc,
               struct ceph_mds_session *session)
{
 if (mdsc->stopping)
  return;

 get_session(session);
 if (queue_work(mdsc->fsc->cap_wq,
         &session->s_cap_release_work)) {
  dout("cap release work queued\n");
 } else {
  ceph_put_mds_session(session);
  dout("failed to queue cap release work\n");
 }
}
