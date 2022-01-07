
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extra_rcvbufs_sent; } ;
struct visornic_devdata {int num_rcv_bufs_could_not_alloc; int num_rcv_bufs; TYPE_1__ chstat; int ** rcvbuf; int alloc_failed_in_if_needed_cnt; struct net_device* netdev; scalar_t__ enab_dis_acked; scalar_t__ enabled; struct uiscmdrsp* cmdrsp_rcv; } ;
struct uiscmdrsp {int dummy; } ;
struct net_device {int dummy; } ;


 int * alloc_rcv_buf (struct net_device*) ;
 int kfree_skb (int *) ;
 int post_skb (struct uiscmdrsp*,struct visornic_devdata*,int *) ;

__attribute__((used)) static void send_rcv_posts_if_needed(struct visornic_devdata *devdata)
{
 int i;
 struct net_device *netdev;
 struct uiscmdrsp *cmdrsp = devdata->cmdrsp_rcv;
 int cur_num_rcv_bufs_to_alloc, rcv_bufs_allocated;
 int err;


 if (!(devdata->enabled && devdata->enab_dis_acked))
  return;

 netdev = devdata->netdev;
 rcv_bufs_allocated = 0;



 cur_num_rcv_bufs_to_alloc = devdata->num_rcv_bufs_could_not_alloc;
 while (cur_num_rcv_bufs_to_alloc > 0) {
  cur_num_rcv_bufs_to_alloc--;
  for (i = 0; i < devdata->num_rcv_bufs; i++) {
   if (devdata->rcvbuf[i])
    continue;
   devdata->rcvbuf[i] = alloc_rcv_buf(netdev);
   if (!devdata->rcvbuf[i]) {
    devdata->alloc_failed_in_if_needed_cnt++;
    break;
   }
   rcv_bufs_allocated++;
   err = post_skb(cmdrsp, devdata, devdata->rcvbuf[i]);
   if (err) {
    kfree_skb(devdata->rcvbuf[i]);
    devdata->rcvbuf[i] = ((void*)0);
    break;
   }
   devdata->chstat.extra_rcvbufs_sent++;
  }
 }
 devdata->num_rcv_bufs_could_not_alloc -= rcv_bufs_allocated;
}
