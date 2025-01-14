
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int mutex; struct socket* private_data; } ;
struct vhost_net_virtqueue {struct vhost_virtqueue vq; } ;
struct vhost_net {int dev; struct vhost_net_virtqueue* vqs; } ;
struct socket {int dummy; } ;


 size_t VHOST_NET_VQ_TX ;
 int handle_tx_copy (struct vhost_net*,struct socket*) ;
 int handle_tx_zerocopy (struct vhost_net*,struct socket*) ;
 int mutex_lock_nested (int *,size_t) ;
 int mutex_unlock (int *) ;
 int vhost_disable_notify (int *,struct vhost_virtqueue*) ;
 int vhost_net_disable_vq (struct vhost_net*,struct vhost_virtqueue*) ;
 scalar_t__ vhost_sock_zcopy (struct socket*) ;
 int vq_meta_prefetch (struct vhost_virtqueue*) ;

__attribute__((used)) static void handle_tx(struct vhost_net *net)
{
 struct vhost_net_virtqueue *nvq = &net->vqs[VHOST_NET_VQ_TX];
 struct vhost_virtqueue *vq = &nvq->vq;
 struct socket *sock;

 mutex_lock_nested(&vq->mutex, VHOST_NET_VQ_TX);
 sock = vq->private_data;
 if (!sock)
  goto out;

 if (!vq_meta_prefetch(vq))
  goto out;

 vhost_disable_notify(&net->dev, vq);
 vhost_net_disable_vq(net, vq);

 if (vhost_sock_zcopy(sock))
  handle_tx_zerocopy(net, sock);
 else
  handle_tx_copy(net, sock);

out:
 mutex_unlock(&vq->mutex);
}
