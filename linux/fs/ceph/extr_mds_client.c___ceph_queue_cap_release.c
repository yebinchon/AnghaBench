
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_num_cap_releases; int s_mdsc; int s_cap_releases; } ;
struct ceph_cap {int session_caps; } ;


 int CEPH_CAPS_PER_RELEASE ;
 int ceph_flush_cap_releases (int ,struct ceph_mds_session*) ;
 int list_add_tail (int *,int *) ;

void __ceph_queue_cap_release(struct ceph_mds_session *session,
         struct ceph_cap *cap)
{
 list_add_tail(&cap->session_caps, &session->s_cap_releases);
 session->s_num_cap_releases++;

 if (!(session->s_num_cap_releases % CEPH_CAPS_PER_RELEASE))
  ceph_flush_cap_releases(session->s_mdsc, session);
}
