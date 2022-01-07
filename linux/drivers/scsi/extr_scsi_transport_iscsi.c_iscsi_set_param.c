
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int param; int len; int cid; int sid; } ;
struct TYPE_4__ {TYPE_1__ set_param; } ;
struct iscsi_uevent {TYPE_2__ u; } ;
struct iscsi_transport {int (* set_param ) (struct iscsi_cls_conn*,int,char*,int ) ;} ;
struct iscsi_cls_session {int recovery_tmo; int recovery_tmo_sysfs_override; } ;
struct iscsi_cls_conn {int dummy; } ;


 int EINVAL ;

 struct iscsi_cls_conn* iscsi_conn_lookup (int ,int ) ;
 struct iscsi_cls_session* iscsi_session_lookup (int ) ;
 int sscanf (char*,char*,int*) ;
 int stub1 (struct iscsi_cls_conn*,int,char*,int ) ;

__attribute__((used)) static int
iscsi_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
{
 char *data = (char*)ev + sizeof(*ev);
 struct iscsi_cls_conn *conn;
 struct iscsi_cls_session *session;
 int err = 0, value = 0;

 session = iscsi_session_lookup(ev->u.set_param.sid);
 conn = iscsi_conn_lookup(ev->u.set_param.sid, ev->u.set_param.cid);
 if (!conn || !session)
  return -EINVAL;

 switch (ev->u.set_param.param) {
 case 128:
  sscanf(data, "%d", &value);
  if (!session->recovery_tmo_sysfs_override)
   session->recovery_tmo = value;
  break;
 default:
  err = transport->set_param(conn, ev->u.set_param.param,
        data, ev->u.set_param.len);
 }

 return err;
}
