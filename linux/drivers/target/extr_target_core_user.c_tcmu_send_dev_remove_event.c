
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int dummy; } ;
struct sk_buff {int dummy; } ;


 int TCMU_CMD_REMOVED_DEVICE ;
 int tcmu_netlink_event_init (struct tcmu_dev*,int ,struct sk_buff**,void**) ;
 int tcmu_netlink_event_send (struct tcmu_dev*,int ,struct sk_buff*,void*) ;

__attribute__((used)) static int tcmu_send_dev_remove_event(struct tcmu_dev *udev)
{
 struct sk_buff *skb = ((void*)0);
 void *msg_header = ((void*)0);
 int ret = 0;

 ret = tcmu_netlink_event_init(udev, TCMU_CMD_REMOVED_DEVICE,
          &skb, &msg_header);
 if (ret < 0)
  return ret;
 return tcmu_netlink_event_send(udev, TCMU_CMD_REMOVED_DEVICE,
           skb, msg_header);
}
