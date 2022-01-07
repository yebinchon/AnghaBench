
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_msg {TYPE_1__* con; } ;
struct ceph_auth_handshake {int dummy; } ;
struct ceph_mds_session {struct ceph_auth_handshake s_auth; } ;
struct TYPE_2__ {struct ceph_mds_session* private; } ;


 int ceph_auth_sign_message (struct ceph_auth_handshake*,struct ceph_msg*) ;

__attribute__((used)) static int mds_sign_message(struct ceph_msg *msg)
{
       struct ceph_mds_session *s = msg->con->private;
       struct ceph_auth_handshake *auth = &s->s_auth;

       return ceph_auth_sign_message(auth, msg);
}
