
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd {int dummy; } ;


 int ENOMEM ;
 int QLINK_CMD_FW_INIT ;
 int QLINK_MACID_RSVD ;
 int QLINK_VIFID_RSVD ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (struct qtnf_bus*,struct sk_buff*) ;

int qtnf_cmd_send_init_fw(struct qtnf_bus *bus)
{
 struct sk_buff *cmd_skb;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(QLINK_MACID_RSVD, QLINK_VIFID_RSVD,
         QLINK_CMD_FW_INIT,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(bus);
 ret = qtnf_cmd_send(bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(bus);

 return ret;
}
