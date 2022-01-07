
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_resp {int dummy; } ;


 int qtnf_cmd_send_with_reply (struct qtnf_bus*,struct sk_buff*,int *,int,int *) ;

__attribute__((used)) static inline int qtnf_cmd_send(struct qtnf_bus *bus, struct sk_buff *cmd_skb)
{
 return qtnf_cmd_send_with_reply(bus, cmd_skb, ((void*)0),
     sizeof(struct qlink_resp), ((void*)0));
}
