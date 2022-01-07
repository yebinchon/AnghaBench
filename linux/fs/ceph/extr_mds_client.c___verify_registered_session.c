
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {size_t s_mds; } ;
struct ceph_mds_client {size_t max_sessions; struct ceph_mds_session** sessions; } ;


 int ENOENT ;

__attribute__((used)) static int __verify_registered_session(struct ceph_mds_client *mdsc,
           struct ceph_mds_session *s)
{
 if (s->s_mds >= mdsc->max_sessions ||
     mdsc->sessions[s->s_mds] != s)
  return -ENOENT;
 return 0;
}
