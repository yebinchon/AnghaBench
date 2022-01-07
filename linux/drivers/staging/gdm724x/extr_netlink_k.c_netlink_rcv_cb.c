
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; int nlmsg_type; } ;
struct net_device {int dummy; } ;


 int ND_IFINDEX_LEN ;
 scalar_t__ ND_MAX_MSG_LEN ;
 void* ND_NLMSG_DATA (struct nlmsghdr*) ;
 int ND_NLMSG_IFIDX (struct nlmsghdr*) ;
 int ND_NLMSG_R_LEN (struct nlmsghdr*) ;
 scalar_t__ NLMSG_HDRLEN ;
 struct net_device* dev_get_by_index (int *,int) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int memcpy (int*,int ,int ) ;
 int pr_err (char*,...) ;
 int rcv_cb (struct net_device*,int ,void*,int ) ;

__attribute__((used)) static void netlink_rcv_cb(struct sk_buff *skb)
{
 struct nlmsghdr *nlh;
 struct net_device *dev;
 u32 mlen;
 void *msg;
 int ifindex;

 if (!rcv_cb) {
  pr_err("nl cb - unregistered\n");
  return;
 }

 if (skb->len < NLMSG_HDRLEN) {
  pr_err("nl cb - invalid skb length\n");
  return;
 }

 nlh = (struct nlmsghdr *)skb->data;

 if (skb->len < nlh->nlmsg_len || nlh->nlmsg_len > ND_MAX_MSG_LEN) {
  pr_err("nl cb - invalid length (%d,%d)\n",
         skb->len, nlh->nlmsg_len);
  return;
 }

 memcpy(&ifindex, ND_NLMSG_IFIDX(nlh), ND_IFINDEX_LEN);
 msg = ND_NLMSG_DATA(nlh);
 mlen = ND_NLMSG_R_LEN(nlh);

 dev = dev_get_by_index(&init_net, ifindex);
 if (dev) {
  rcv_cb(dev, nlh->nlmsg_type, msg, mlen);
  dev_put(dev);
 } else {
  pr_err("nl cb - dev (%d) not found\n", ifindex);
 }
}
