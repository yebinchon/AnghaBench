
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct ceph_mds_session {int s_mds; scalar_t__ s_num_cap_releases; int s_cap_releases; int s_cap_lock; } ;


 int dout (char*,int ) ;
 int list_splice_init (int *,struct list_head*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void detach_cap_releases(struct ceph_mds_session *session,
    struct list_head *target)
{
 lockdep_assert_held(&session->s_cap_lock);

 list_splice_init(&session->s_cap_releases, target);
 session->s_num_cap_releases = 0;
 dout("dispose_cap_releases mds%d\n", session->s_mds);
}
