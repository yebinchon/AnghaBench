
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visornic_devdata {int num_rcv_bufs; int ** rcvbuf; int cmdrsp_rcv; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int * alloc_rcv_buf (struct net_device*) ;
 int kfree_skb (int *) ;
 int post_skb (int ,struct visornic_devdata*,int *) ;

__attribute__((used)) static int init_rcv_bufs(struct net_device *netdev,
    struct visornic_devdata *devdata)
{
 int i, j, count, err;




 for (i = 0; i < devdata->num_rcv_bufs; i++) {
  devdata->rcvbuf[i] = alloc_rcv_buf(netdev);

  if (!devdata->rcvbuf[i])
   break;
 }

 if (i == 0)
  return -ENOMEM;
 count = i;




 if (count < ((2 * devdata->num_rcv_bufs) / 3)) {

  for (i = 0; i < count; i++) {
   kfree_skb(devdata->rcvbuf[i]);
   devdata->rcvbuf[i] = ((void*)0);
  }
  return -ENOMEM;
 }





 for (i = 0; i < count; i++) {
  err = post_skb(devdata->cmdrsp_rcv, devdata,
          devdata->rcvbuf[i]);
  if (!err)
   continue;






  for (j = i; j < count; j++) {
   kfree_skb(devdata->rcvbuf[j]);
   devdata->rcvbuf[j] = ((void*)0);
  }
  if (i == 0)
   return err;
  break;
 }

 return 0;
}
