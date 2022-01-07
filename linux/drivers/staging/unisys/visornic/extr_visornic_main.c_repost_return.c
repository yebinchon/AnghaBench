
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visornic_devdata {int num_rcv_bufs; int bad_rcv_buf; int n_repost_deficit; struct sk_buff** rcvbuf; int alloc_failed_in_repost_rtn_cnt; int num_rcv_bufs_could_not_alloc; int repost_found_skb_cnt; int found_repost_rcvbuf_cnt; int n_rcvx; int n_rcv2; int n_rcv1; int n_rcv0; } ;
struct net_pkt_rcv {int numrcvbufs; struct sk_buff** rcvbuf; } ;
struct TYPE_2__ {struct net_pkt_rcv rcv; } ;
struct uiscmdrsp {TYPE_1__ net; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct sk_buff* alloc_rcv_buf (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int post_skb (struct uiscmdrsp*,struct visornic_devdata*,struct sk_buff*) ;

__attribute__((used)) static int repost_return(struct uiscmdrsp *cmdrsp,
    struct visornic_devdata *devdata,
    struct sk_buff *skb, struct net_device *netdev)
{
 struct net_pkt_rcv copy;
 int i = 0, cc, numreposted;
 int found_skb = 0;
 int status = 0;

 copy = cmdrsp->net.rcv;
 switch (copy.numrcvbufs) {
 case 0:
  devdata->n_rcv0++;
  break;
 case 1:
  devdata->n_rcv1++;
  break;
 case 2:
  devdata->n_rcv2++;
  break;
 default:
  devdata->n_rcvx++;
  break;
 }
 for (cc = 0, numreposted = 0; cc < copy.numrcvbufs; cc++) {
  for (i = 0; i < devdata->num_rcv_bufs; i++) {
   if (devdata->rcvbuf[i] != copy.rcvbuf[cc])
    continue;

   if ((skb) && devdata->rcvbuf[i] == skb) {
    devdata->found_repost_rcvbuf_cnt++;
    found_skb = 1;
    devdata->repost_found_skb_cnt++;
   }
   devdata->rcvbuf[i] = alloc_rcv_buf(netdev);
   if (!devdata->rcvbuf[i]) {
    devdata->num_rcv_bufs_could_not_alloc++;
    devdata->alloc_failed_in_repost_rtn_cnt++;
    status = -ENOMEM;
    break;
   }
   status = post_skb(cmdrsp, devdata, devdata->rcvbuf[i]);
   if (status) {
    kfree_skb(devdata->rcvbuf[i]);
    devdata->rcvbuf[i] = ((void*)0);
    break;
   }
   numreposted++;
   break;
  }
 }
 if (numreposted != copy.numrcvbufs) {
  devdata->n_repost_deficit++;
  status = -EINVAL;
 }
 if (skb) {
  if (found_skb) {
   kfree_skb(skb);
  } else {
   status = -EINVAL;
   devdata->bad_rcv_buf++;
  }
 }
 return status;
}
