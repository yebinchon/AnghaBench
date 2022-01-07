
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_mds; struct ceph_mds_client* s_mdsc; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;


 int pr_warn (char*,int ) ;
 int send_mds_reconnect (struct ceph_mds_client*,struct ceph_mds_session*) ;

__attribute__((used)) static void peer_reset(struct ceph_connection *con)
{
 struct ceph_mds_session *s = con->private;
 struct ceph_mds_client *mdsc = s->s_mdsc;

 pr_warn("mds%d closed our session\n", s->s_mds);
 send_mds_reconnect(mdsc, s);
}
