
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct qtnf_wmac {int dummy; } ;
struct qtnf_bus {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct qlink_event {int vifid; int macid; TYPE_1__ mhdr; int event_id; } ;


 int EINVAL ;
 int ENXIO ;
 int le16_to_cpu (int ) ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int pr_err (char*) ;
 struct qtnf_wmac* qtnf_core_get_mac (struct qtnf_bus*,int ) ;
 int qtnf_event_parse (struct qtnf_wmac*,struct sk_buff const*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int qtnf_event_process_skb(struct qtnf_bus *bus,
      const struct sk_buff *skb)
{
 const struct qlink_event *event;
 struct qtnf_wmac *mac;
 int res;

 if (unlikely(!skb || skb->len < sizeof(*event))) {
  pr_err("invalid event buffer\n");
  return -EINVAL;
 }

 event = (struct qlink_event *)skb->data;

 mac = qtnf_core_get_mac(bus, event->macid);

 pr_debug("new event id:%x len:%u mac:%u vif:%u\n",
   le16_to_cpu(event->event_id), le16_to_cpu(event->mhdr.len),
   event->macid, event->vifid);

 if (unlikely(!mac))
  return -ENXIO;

 rtnl_lock();
 res = qtnf_event_parse(mac, skb);
 rtnl_unlock();

 return res;
}
