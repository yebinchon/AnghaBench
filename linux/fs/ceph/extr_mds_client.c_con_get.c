
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_ref; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;


 int dout (char*,struct ceph_mds_session*,...) ;
 scalar_t__ get_session (struct ceph_mds_session*) ;
 int refcount_read (int *) ;

__attribute__((used)) static struct ceph_connection *con_get(struct ceph_connection *con)
{
 struct ceph_mds_session *s = con->private;

 if (get_session(s)) {
  dout("mdsc con_get %p ok (%d)\n", s, refcount_read(&s->s_ref));
  return con;
 }
 dout("mdsc con_get %p FAIL\n", s);
 return ((void*)0);
}
