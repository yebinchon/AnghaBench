
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int dummy; } ;
struct ceph_mds_client {int max_sessions; int * sessions; } ;


 struct ceph_mds_session* get_session (int ) ;

struct ceph_mds_session *__ceph_lookup_mds_session(struct ceph_mds_client *mdsc,
         int mds)
{
 if (mds >= mdsc->max_sessions || !mdsc->sessions[mds])
  return ((void*)0);
 return get_session(mdsc->sessions[mds]);
}
