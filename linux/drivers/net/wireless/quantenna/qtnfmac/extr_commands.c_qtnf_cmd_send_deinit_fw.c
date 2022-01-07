
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd {int dummy; } ;


 int QLINK_CMD_FW_DEINIT ;
 int QLINK_MACID_RSVD ;
 int QLINK_VIFID_RSVD ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (struct qtnf_bus*,struct sk_buff*) ;

void qtnf_cmd_send_deinit_fw(struct qtnf_bus *bus)
{
 struct sk_buff *cmd_skb;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(QLINK_MACID_RSVD, QLINK_VIFID_RSVD,
         QLINK_CMD_FW_DEINIT,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return;

 qtnf_bus_lock(bus);
 qtnf_cmd_send(bus, cmd_skb);
 qtnf_bus_unlock(bus);
}
