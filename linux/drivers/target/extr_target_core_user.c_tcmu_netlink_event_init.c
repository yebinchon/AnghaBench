
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dev_index; } ;
struct TYPE_5__ {TYPE_1__* uio_dev; int name; } ;
struct tcmu_dev {TYPE_3__ se_dev; TYPE_2__ uio_info; } ;
struct sk_buff {int dummy; } ;
typedef enum tcmu_genl_cmd { ____Placeholder_tcmu_genl_cmd } tcmu_genl_cmd ;
struct TYPE_4__ {int minor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 int TCMU_ATTR_DEVICE ;
 int TCMU_ATTR_DEVICE_ID ;
 int TCMU_ATTR_MINOR ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int) ;
 int nla_put_string (struct sk_buff*,int ,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 int tcmu_genl_family ;

__attribute__((used)) static int tcmu_netlink_event_init(struct tcmu_dev *udev,
       enum tcmu_genl_cmd cmd,
       struct sk_buff **buf, void **hdr)
{
 struct sk_buff *skb;
 void *msg_header;
 int ret = -ENOMEM;

 skb = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return ret;

 msg_header = genlmsg_put(skb, 0, 0, &tcmu_genl_family, 0, cmd);
 if (!msg_header)
  goto free_skb;

 ret = nla_put_string(skb, TCMU_ATTR_DEVICE, udev->uio_info.name);
 if (ret < 0)
  goto free_skb;

 ret = nla_put_u32(skb, TCMU_ATTR_MINOR, udev->uio_info.uio_dev->minor);
 if (ret < 0)
  goto free_skb;

 ret = nla_put_u32(skb, TCMU_ATTR_DEVICE_ID, udev->se_dev.dev_index);
 if (ret < 0)
  goto free_skb;

 *buf = skb;
 *hdr = msg_header;
 return ret;

free_skb:
 nlmsg_free(skb);
 return ret;
}
