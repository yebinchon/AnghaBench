
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int num; int iov; int private_data; scalar_t__ busyloop_timeout; } ;
struct vhost_net_virtqueue {struct vhost_virtqueue vq; } ;
struct vhost_net {struct vhost_net_virtqueue* vqs; } ;
struct msghdr {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 size_t VHOST_NET_VQ_RX ;
 int vhost_get_vq_desc (struct vhost_virtqueue*,int ,int ,unsigned int*,unsigned int*,int *,int *) ;
 int vhost_net_busy_poll (struct vhost_net*,struct vhost_virtqueue*,struct vhost_virtqueue*,int*,int) ;
 int vhost_sock_zcopy (int ) ;
 int vhost_tx_batch (struct vhost_net*,struct vhost_net_virtqueue*,int ,struct msghdr*) ;

__attribute__((used)) static int vhost_net_tx_get_vq_desc(struct vhost_net *net,
        struct vhost_net_virtqueue *tnvq,
        unsigned int *out_num, unsigned int *in_num,
        struct msghdr *msghdr, bool *busyloop_intr)
{
 struct vhost_net_virtqueue *rnvq = &net->vqs[VHOST_NET_VQ_RX];
 struct vhost_virtqueue *rvq = &rnvq->vq;
 struct vhost_virtqueue *tvq = &tnvq->vq;

 int r = vhost_get_vq_desc(tvq, tvq->iov, ARRAY_SIZE(tvq->iov),
      out_num, in_num, ((void*)0), ((void*)0));

 if (r == tvq->num && tvq->busyloop_timeout) {

  if (!vhost_sock_zcopy(tvq->private_data))
   vhost_tx_batch(net, tnvq, tvq->private_data, msghdr);

  vhost_net_busy_poll(net, rvq, tvq, busyloop_intr, 0);

  r = vhost_get_vq_desc(tvq, tvq->iov, ARRAY_SIZE(tvq->iov),
          out_num, in_num, ((void*)0), ((void*)0));
 }

 return r;
}
