
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ authorizer; } ;
struct ceph_mds_session {TYPE_1__ s_auth; int s_ref; } ;


 int ceph_auth_destroy_authorizer (scalar_t__) ;
 int dout (char*,struct ceph_mds_session*,scalar_t__,scalar_t__) ;
 int kfree (struct ceph_mds_session*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 scalar_t__ refcount_read (int *) ;

void ceph_put_mds_session(struct ceph_mds_session *s)
{
 dout("mdsc put_session %p %d -> %d\n", s,
      refcount_read(&s->s_ref), refcount_read(&s->s_ref)-1);
 if (refcount_dec_and_test(&s->s_ref)) {
  if (s->s_auth.authorizer)
   ceph_auth_destroy_authorizer(s->s_auth.authorizer);
  kfree(s);
 }
}
