
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {size_t s_mds; int s_con; scalar_t__ s_state; } ;
struct ceph_mds_client {int num_sessions; struct ceph_mds_session** sessions; } ;


 int BUG_ON (int) ;
 int atomic_dec (int *) ;
 int ceph_con_close (int *) ;
 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int dout (char*,size_t,struct ceph_mds_session*) ;

__attribute__((used)) static void __unregister_session(struct ceph_mds_client *mdsc,
          struct ceph_mds_session *s)
{
 dout("__unregister_session mds%d %p\n", s->s_mds, s);
 BUG_ON(mdsc->sessions[s->s_mds] != s);
 mdsc->sessions[s->s_mds] = ((void*)0);
 s->s_state = 0;
 ceph_con_close(&s->s_con);
 ceph_put_mds_session(s);
 atomic_dec(&mdsc->num_sessions);
}
