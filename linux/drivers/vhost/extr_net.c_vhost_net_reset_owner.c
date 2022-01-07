
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vhost_umem {int dummy; } ;
struct TYPE_4__ {int mutex; } ;
struct vhost_net {TYPE_1__ dev; } ;
struct socket {int dummy; } ;


 long ENOMEM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sockfd_put (struct socket*) ;
 long vhost_dev_check_owner (TYPE_1__*) ;
 int vhost_dev_reset_owner (TYPE_1__*,struct vhost_umem*) ;
 struct vhost_umem* vhost_dev_reset_owner_prepare () ;
 int vhost_dev_stop (TYPE_1__*) ;
 int vhost_net_flush (struct vhost_net*) ;
 int vhost_net_stop (struct vhost_net*,struct socket**,struct socket**) ;
 int vhost_net_vq_reset (struct vhost_net*) ;

__attribute__((used)) static long vhost_net_reset_owner(struct vhost_net *n)
{
 struct socket *tx_sock = ((void*)0);
 struct socket *rx_sock = ((void*)0);
 long err;
 struct vhost_umem *umem;

 mutex_lock(&n->dev.mutex);
 err = vhost_dev_check_owner(&n->dev);
 if (err)
  goto done;
 umem = vhost_dev_reset_owner_prepare();
 if (!umem) {
  err = -ENOMEM;
  goto done;
 }
 vhost_net_stop(n, &tx_sock, &rx_sock);
 vhost_net_flush(n);
 vhost_dev_stop(&n->dev);
 vhost_dev_reset_owner(&n->dev, umem);
 vhost_net_vq_reset(n);
done:
 mutex_unlock(&n->dev.mutex);
 if (tx_sock)
  sockfd_put(tx_sock);
 if (rx_sock)
  sockfd_put(rx_sock);
 return err;
}
