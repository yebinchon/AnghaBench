
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint32_t ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct TYPE_12__ {int data_size; int hdr_size; int cid; int sid; } ;
struct TYPE_20__ {int flag; int cid; int sid; } ;
struct TYPE_17__ {int cid; int sid; } ;
struct TYPE_16__ {int transport_eph; int is_leading; int cid; int sid; } ;
struct TYPE_15__ {int sid; } ;
struct TYPE_14__ {int queue_depth; int cmds_max; int initial_cmdsn; int ep_handle; } ;
struct TYPE_13__ {int queue_depth; int cmds_max; int initial_cmdsn; } ;
struct TYPE_19__ {TYPE_1__ send_pdu; TYPE_9__ stop_conn; TYPE_6__ start_conn; TYPE_5__ b_conn; TYPE_4__ d_session; TYPE_3__ c_bound_session; TYPE_2__ c_session; } ;
struct TYPE_18__ {int retcode; } ;
struct iscsi_uevent {TYPE_8__ u; TYPE_7__ r; int transport_handle; } ;
struct iscsi_transport {int owner; int (* send_pdu ) (struct iscsi_cls_conn*,struct iscsi_hdr*,char*,int ) ;int (* stop_conn ) (struct iscsi_cls_conn*,int ) ;int (* start_conn ) (struct iscsi_cls_conn*) ;int ep_connect; int (* bind_conn ) (struct iscsi_cls_session*,struct iscsi_cls_conn*,int ,int ) ;int (* destroy_session ) (struct iscsi_cls_session*) ;} ;
struct iscsi_internal {struct iscsi_transport* iscsi_transport; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_endpoint {struct iscsi_cls_conn* conn; int id; } ;
struct iscsi_cls_session {int unbind_work; } ;
struct iscsi_cls_conn {int ep_mutex; struct iscsi_endpoint* ep; } ;
struct TYPE_11__ {int portid; } ;


 int EINVAL ;
 int ENOSYS ;
 int ISCSI_NL_GRP_ISCSID ;
 int ISCSI_NL_GRP_UIP ;
 int KERN_ERR ;
 TYPE_10__ NETLINK_CB (struct sk_buff*) ;
 int iscsi_cls_conn_printk (int ,struct iscsi_cls_conn*,char*) ;
 struct iscsi_cls_conn* iscsi_conn_lookup (int ,int ) ;
 int iscsi_del_flashnode (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_delete_chap (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_get_chap (struct iscsi_transport*,struct nlmsghdr*) ;
 int iscsi_get_host_stats (struct iscsi_transport*,struct nlmsghdr*) ;
 int iscsi_if_create_conn (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_if_create_session (struct iscsi_internal*,struct iscsi_endpoint*,struct iscsi_uevent*,int ,int ,int ,int ) ;
 int iscsi_if_destroy_conn (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_if_ep_disconnect (struct iscsi_transport*,int ) ;
 int iscsi_if_get_stats (struct iscsi_transport*,struct nlmsghdr*) ;
 int iscsi_if_transport_ep (struct iscsi_transport*,struct iscsi_uevent*,int) ;
 struct iscsi_internal* iscsi_if_transport_lookup (int ) ;
 int iscsi_login_flashnode (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_logout_flashnode (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_logout_flashnode_sid (struct iscsi_transport*,struct iscsi_uevent*) ;
 struct iscsi_endpoint* iscsi_lookup_endpoint (int ) ;
 int iscsi_new_flashnode (struct iscsi_transport*,struct iscsi_uevent*,int ) ;
 int iscsi_ptr (int ) ;
 int iscsi_send_ping (struct iscsi_transport*,struct iscsi_uevent*) ;
 struct iscsi_cls_session* iscsi_session_lookup (int ) ;
 int iscsi_session_to_shost (struct iscsi_cls_session*) ;
 int iscsi_set_chap (struct iscsi_transport*,struct iscsi_uevent*,int ) ;
 int iscsi_set_flashnode_param (struct iscsi_transport*,struct iscsi_uevent*,int ) ;
 int iscsi_set_host_param (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_set_iface_params (struct iscsi_transport*,struct iscsi_uevent*,int ) ;
 int iscsi_set_param (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_set_path (struct iscsi_transport*,struct iscsi_uevent*) ;
 int iscsi_tgt_dscvr (struct iscsi_transport*,struct iscsi_uevent*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nlmsg_attrlen (struct nlmsghdr*,int) ;
 struct iscsi_uevent* nlmsg_data (struct nlmsghdr*) ;
 int scsi_queue_work (int ,int *) ;
 int stub1 (struct iscsi_cls_session*) ;
 int stub2 (struct iscsi_cls_session*,struct iscsi_cls_conn*,int ,int ) ;
 int stub3 (struct iscsi_cls_conn*) ;
 int stub4 (struct iscsi_cls_conn*,int ) ;
 int stub5 (struct iscsi_cls_conn*,struct iscsi_hdr*,char*,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int
iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
{
 int err = 0;
 u32 portid;
 struct iscsi_uevent *ev = nlmsg_data(nlh);
 struct iscsi_transport *transport = ((void*)0);
 struct iscsi_internal *priv;
 struct iscsi_cls_session *session;
 struct iscsi_cls_conn *conn;
 struct iscsi_endpoint *ep = ((void*)0);

 if (nlh->nlmsg_type == 143)
  *group = ISCSI_NL_GRP_UIP;
 else
  *group = ISCSI_NL_GRP_ISCSID;

 priv = iscsi_if_transport_lookup(iscsi_ptr(ev->transport_handle));
 if (!priv)
  return -EINVAL;
 transport = priv->iscsi_transport;

 if (!try_module_get(transport->owner))
  return -EINVAL;

 portid = NETLINK_CB(skb).portid;

 switch (nlh->nlmsg_type) {
 case 155:
  err = iscsi_if_create_session(priv, ep, ev,
           portid,
           ev->u.c_session.initial_cmdsn,
           ev->u.c_session.cmds_max,
           ev->u.c_session.queue_depth);
  break;
 case 157:
  ep = iscsi_lookup_endpoint(ev->u.c_bound_session.ep_handle);
  if (!ep) {
   err = -EINVAL;
   break;
  }

  err = iscsi_if_create_session(priv, ep, ev,
     portid,
     ev->u.c_bound_session.initial_cmdsn,
     ev->u.c_bound_session.cmds_max,
     ev->u.c_bound_session.queue_depth);
  break;
 case 151:
  session = iscsi_session_lookup(ev->u.d_session.sid);
  if (session)
   transport->destroy_session(session);
  else
   err = -EINVAL;
  break;
 case 128:
  session = iscsi_session_lookup(ev->u.d_session.sid);
  if (session)
   scsi_queue_work(iscsi_session_to_shost(session),
     &session->unbind_work);
  else
   err = -EINVAL;
  break;
 case 156:
  err = iscsi_if_create_conn(transport, ev);
  break;
 case 152:
  err = iscsi_if_destroy_conn(transport, ev);
  break;
 case 158:
  session = iscsi_session_lookup(ev->u.b_conn.sid);
  conn = iscsi_conn_lookup(ev->u.b_conn.sid, ev->u.b_conn.cid);

  if (conn && conn->ep)
   iscsi_if_ep_disconnect(transport, conn->ep->id);

  if (!session || !conn) {
   err = -EINVAL;
   break;
  }

  ev->r.retcode = transport->bind_conn(session, conn,
      ev->u.b_conn.transport_eph,
      ev->u.b_conn.is_leading);
  if (ev->r.retcode || !transport->ep_connect)
   break;

  ep = iscsi_lookup_endpoint(ev->u.b_conn.transport_eph);
  if (ep) {
   ep->conn = conn;

   mutex_lock(&conn->ep_mutex);
   conn->ep = ep;
   mutex_unlock(&conn->ep_mutex);
  } else
   iscsi_cls_conn_printk(KERN_ERR, conn,
           "Could not set ep conn "
           "binding\n");
  break;
 case 136:
  err = iscsi_set_param(transport, ev);
  break;
 case 135:
  conn = iscsi_conn_lookup(ev->u.start_conn.sid, ev->u.start_conn.cid);
  if (conn)
   ev->r.retcode = transport->start_conn(conn);
  else
   err = -EINVAL;
  break;
 case 134:
  conn = iscsi_conn_lookup(ev->u.stop_conn.sid, ev->u.stop_conn.cid);
  if (conn)
   transport->stop_conn(conn, ev->u.stop_conn.flag);
  else
   err = -EINVAL;
  break;
 case 141:
  conn = iscsi_conn_lookup(ev->u.send_pdu.sid, ev->u.send_pdu.cid);
  if (conn)
   ev->r.retcode = transport->send_pdu(conn,
    (struct iscsi_hdr*)((char*)ev + sizeof(*ev)),
    (char*)ev + sizeof(*ev) + ev->u.send_pdu.hdr_size,
    ev->u.send_pdu.data_size);
  else
   err = -EINVAL;
  break;
 case 148:
  err = iscsi_if_get_stats(transport, nlh);
  break;
 case 132:
 case 129:
 case 130:
 case 131:
  err = iscsi_if_transport_ep(transport, ev, nlh->nlmsg_type);
  break;
 case 133:
  err = iscsi_tgt_dscvr(transport, ev);
  break;
 case 138:
  err = iscsi_set_host_param(transport, ev);
  break;
 case 143:
  err = iscsi_set_path(transport, ev);
  break;
 case 137:
  err = iscsi_set_iface_params(transport, ev,
          nlmsg_attrlen(nlh, sizeof(*ev)));
  break;
 case 142:
  err = iscsi_send_ping(transport, ev);
  break;
 case 150:
  err = iscsi_get_chap(transport, nlh);
  break;
 case 154:
  err = iscsi_delete_chap(transport, ev);
  break;
 case 139:
  err = iscsi_set_flashnode_param(transport, ev,
      nlmsg_attrlen(nlh,
             sizeof(*ev)));
  break;
 case 144:
  err = iscsi_new_flashnode(transport, ev,
       nlmsg_attrlen(nlh, sizeof(*ev)));
  break;
 case 153:
  err = iscsi_del_flashnode(transport, ev);
  break;
 case 147:
  err = iscsi_login_flashnode(transport, ev);
  break;
 case 146:
  err = iscsi_logout_flashnode(transport, ev);
  break;
 case 145:
  err = iscsi_logout_flashnode_sid(transport, ev);
  break;
 case 140:
  err = iscsi_set_chap(transport, ev,
         nlmsg_attrlen(nlh, sizeof(*ev)));
  break;
 case 149:
  err = iscsi_get_host_stats(transport, nlh);
  break;
 default:
  err = -ENOSYS;
  break;
 }

 module_put(transport->owner);
 return err;
}
