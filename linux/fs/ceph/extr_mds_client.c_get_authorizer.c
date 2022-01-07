
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ceph_auth_handshake {int * authorizer; } ;
struct ceph_mds_session {struct ceph_auth_handshake s_auth; struct ceph_mds_client* s_mdsc; } ;
struct ceph_mds_client {TYPE_3__* fsc; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;
struct ceph_auth_client {int protocol; } ;
struct TYPE_6__ {TYPE_2__* client; } ;
struct TYPE_4__ {struct ceph_auth_client* auth; } ;
struct TYPE_5__ {TYPE_1__ monc; } ;


 int CEPH_ENTITY_TYPE_MDS ;
 struct ceph_auth_handshake* ERR_PTR (int) ;
 int ceph_auth_create_authorizer (struct ceph_auth_client*,int ,struct ceph_auth_handshake*) ;
 int ceph_auth_destroy_authorizer (int *) ;
 int ceph_auth_update_authorizer (struct ceph_auth_client*,int ,struct ceph_auth_handshake*) ;

__attribute__((used)) static struct ceph_auth_handshake *get_authorizer(struct ceph_connection *con,
     int *proto, int force_new)
{
 struct ceph_mds_session *s = con->private;
 struct ceph_mds_client *mdsc = s->s_mdsc;
 struct ceph_auth_client *ac = mdsc->fsc->client->monc.auth;
 struct ceph_auth_handshake *auth = &s->s_auth;

 if (force_new && auth->authorizer) {
  ceph_auth_destroy_authorizer(auth->authorizer);
  auth->authorizer = ((void*)0);
 }
 if (!auth->authorizer) {
  int ret = ceph_auth_create_authorizer(ac, CEPH_ENTITY_TYPE_MDS,
            auth);
  if (ret)
   return ERR_PTR(ret);
 } else {
  int ret = ceph_auth_update_authorizer(ac, CEPH_ENTITY_TYPE_MDS,
            auth);
  if (ret)
   return ERR_PTR(ret);
 }
 *proto = ac->protocol;

 return auth;
}
