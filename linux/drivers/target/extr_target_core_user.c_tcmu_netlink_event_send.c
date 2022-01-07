
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef enum tcmu_genl_cmd { ____Placeholder_tcmu_genl_cmd } tcmu_genl_cmd ;


 int ESRCH ;
 int GFP_KERNEL ;
 int TCMU_CMD_ADDED_DEVICE ;
 int TCMU_MCGRP_CONFIG ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_allns (int *,struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 int tcmu_destroy_genl_cmd_reply (struct tcmu_dev*) ;
 int tcmu_genl_family ;
 int tcmu_init_genl_cmd_reply (struct tcmu_dev*,int) ;
 int tcmu_wait_genl_cmd_reply (struct tcmu_dev*) ;

__attribute__((used)) static int tcmu_netlink_event_send(struct tcmu_dev *udev,
       enum tcmu_genl_cmd cmd,
       struct sk_buff *skb, void *msg_header)
{
 int ret;

 genlmsg_end(skb, msg_header);

 ret = tcmu_init_genl_cmd_reply(udev, cmd);
 if (ret) {
  nlmsg_free(skb);
  return ret;
 }

 ret = genlmsg_multicast_allns(&tcmu_genl_family, skb, 0,
          TCMU_MCGRP_CONFIG, GFP_KERNEL);


 if (ret == 0 ||
    (ret == -ESRCH && cmd == TCMU_CMD_ADDED_DEVICE))
  return tcmu_wait_genl_cmd_reply(udev);
 else
  tcmu_destroy_genl_cmd_reply(udev);

 return ret;
}
