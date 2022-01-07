
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_ref; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline struct ceph_mds_session *
ceph_get_mds_session(struct ceph_mds_session *s)
{
 refcount_inc(&s->s_ref);
 return s;
}
