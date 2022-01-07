
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_type; } ;
struct TYPE_3__ {int sid; int cid; } ;
struct TYPE_4__ {TYPE_1__ get_stats; } ;
struct iscsi_uevent {int custom_length; TYPE_2__ u; int type; int transport_handle; } ;
struct iscsi_transport {int (* get_stats ) (struct iscsi_cls_conn*,struct iscsi_uevent*) ;} ;
struct iscsi_stats_custom {int dummy; } ;
struct iscsi_stats {int custom_length; TYPE_2__ u; int type; int transport_handle; } ;
struct iscsi_internal {int dummy; } ;
struct iscsi_cls_conn {int transport; } ;


 int ECONNREFUSED ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int ISCSI_NL_GRP_ISCSID ;
 int ISCSI_STATS_CUSTOM_MAX ;
 int KERN_ERR ;
 int NLMSG_ALIGN (int) ;
 struct nlmsghdr* __nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int iscsi_cls_conn_printk (int ,struct iscsi_cls_conn*,char*) ;
 struct iscsi_cls_conn* iscsi_conn_lookup (int ,int ) ;
 int iscsi_handle (int ) ;
 struct iscsi_internal* iscsi_if_transport_lookup (struct iscsi_transport*) ;
 int iscsi_multicast_skb (struct sk_buff*,int ,int ) ;
 int memset (struct iscsi_uevent*,int ,int) ;
 struct iscsi_uevent* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_msg_size (int) ;
 int nlmsg_total_size (int) ;
 int skb_trim (struct sk_buff*,int ) ;
 int stub1 (struct iscsi_cls_conn*,struct iscsi_uevent*) ;

__attribute__((used)) static int
iscsi_if_get_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
{
 struct iscsi_uevent *ev = nlmsg_data(nlh);
 struct iscsi_stats *stats;
 struct sk_buff *skbstat;
 struct iscsi_cls_conn *conn;
 struct nlmsghdr *nlhstat;
 struct iscsi_uevent *evstat;
 struct iscsi_internal *priv;
 int len = nlmsg_total_size(sizeof(*ev) +
       sizeof(struct iscsi_stats) +
       sizeof(struct iscsi_stats_custom) *
       ISCSI_STATS_CUSTOM_MAX);
 int err = 0;

 priv = iscsi_if_transport_lookup(transport);
 if (!priv)
  return -EINVAL;

 conn = iscsi_conn_lookup(ev->u.get_stats.sid, ev->u.get_stats.cid);
 if (!conn)
  return -EEXIST;

 do {
  int actual_size;

  skbstat = alloc_skb(len, GFP_ATOMIC);
  if (!skbstat) {
   iscsi_cls_conn_printk(KERN_ERR, conn, "can not "
           "deliver stats: OOM\n");
   return -ENOMEM;
  }

  nlhstat = __nlmsg_put(skbstat, 0, 0, 0,
          (len - sizeof(*nlhstat)), 0);
  evstat = nlmsg_data(nlhstat);
  memset(evstat, 0, sizeof(*evstat));
  evstat->transport_handle = iscsi_handle(conn->transport);
  evstat->type = nlh->nlmsg_type;
  evstat->u.get_stats.cid =
   ev->u.get_stats.cid;
  evstat->u.get_stats.sid =
   ev->u.get_stats.sid;
  stats = (struct iscsi_stats *)
   ((char*)evstat + sizeof(*evstat));
  memset(stats, 0, sizeof(*stats));

  transport->get_stats(conn, stats);
  actual_size = nlmsg_total_size(sizeof(struct iscsi_uevent) +
            sizeof(struct iscsi_stats) +
            sizeof(struct iscsi_stats_custom) *
            stats->custom_length);
  actual_size -= sizeof(*nlhstat);
  actual_size = nlmsg_msg_size(actual_size);
  skb_trim(skbstat, NLMSG_ALIGN(actual_size));
  nlhstat->nlmsg_len = actual_size;

  err = iscsi_multicast_skb(skbstat, ISCSI_NL_GRP_ISCSID,
       GFP_ATOMIC);
 } while (err < 0 && err != -ECONNREFUSED);

 return err;
}
