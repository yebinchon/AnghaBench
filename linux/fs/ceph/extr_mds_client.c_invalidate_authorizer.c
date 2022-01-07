
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ceph_mds_session {struct ceph_mds_client* s_mdsc; } ;
struct ceph_mds_client {TYPE_2__* fsc; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;
struct ceph_auth_client {int dummy; } ;
struct TYPE_6__ {struct ceph_auth_client* auth; } ;
struct TYPE_5__ {TYPE_1__* client; } ;
struct TYPE_4__ {TYPE_3__ monc; } ;


 int CEPH_ENTITY_TYPE_MDS ;
 int ceph_auth_invalidate_authorizer (struct ceph_auth_client*,int ) ;
 int ceph_monc_validate_auth (TYPE_3__*) ;

__attribute__((used)) static int invalidate_authorizer(struct ceph_connection *con)
{
 struct ceph_mds_session *s = con->private;
 struct ceph_mds_client *mdsc = s->s_mdsc;
 struct ceph_auth_client *ac = mdsc->fsc->client->monc.auth;

 ceph_auth_invalidate_authorizer(ac, CEPH_ENTITY_TYPE_MDS);

 return ceph_monc_validate_auth(&mdsc->fsc->client->monc);
}
