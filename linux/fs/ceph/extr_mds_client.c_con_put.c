
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_ref; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;


 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int dout (char*,struct ceph_mds_session*,scalar_t__) ;
 scalar_t__ refcount_read (int *) ;

__attribute__((used)) static void con_put(struct ceph_connection *con)
{
 struct ceph_mds_session *s = con->private;

 dout("mdsc con_put %p (%d)\n", s, refcount_read(&s->s_ref) - 1);
 ceph_put_mds_session(s);
}
