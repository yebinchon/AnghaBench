
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int dummy; } ;
struct sk_buff {int dummy; } ;


 int TCMU_ATTR_DEV_CFG ;
 int TCMU_CMD_RECONFIG_DEVICE ;
 int nla_put_string (struct sk_buff*,int ,char const*) ;
 int nlmsg_free (struct sk_buff*) ;
 int tcmu_netlink_event_init (struct tcmu_dev*,int ,struct sk_buff**,void**) ;
 int tcmu_netlink_event_send (struct tcmu_dev*,int ,struct sk_buff*,void*) ;

__attribute__((used)) static int tcmu_send_dev_config_event(struct tcmu_dev *udev,
          const char *reconfig_data)
{
 struct sk_buff *skb = ((void*)0);
 void *msg_header = ((void*)0);
 int ret = 0;

 ret = tcmu_netlink_event_init(udev, TCMU_CMD_RECONFIG_DEVICE,
          &skb, &msg_header);
 if (ret < 0)
  return ret;
 ret = nla_put_string(skb, TCMU_ATTR_DEV_CFG, reconfig_data);
 if (ret < 0) {
  nlmsg_free(skb);
  return ret;
 }
 return tcmu_netlink_event_send(udev, TCMU_CMD_RECONFIG_DEVICE,
           skb, msg_header);
}
