
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_ref; } ;


 int dout (char*,struct ceph_mds_session*,...) ;
 scalar_t__ refcount_inc_not_zero (int *) ;
 scalar_t__ refcount_read (int *) ;

__attribute__((used)) static struct ceph_mds_session *get_session(struct ceph_mds_session *s)
{
 if (refcount_inc_not_zero(&s->s_ref)) {
  dout("mdsc get_session %p %d -> %d\n", s,
       refcount_read(&s->s_ref)-1, refcount_read(&s->s_ref));
  return s;
 } else {
  dout("mdsc get_session %p 0 -- FAIL\n", s);
  return ((void*)0);
 }
}
