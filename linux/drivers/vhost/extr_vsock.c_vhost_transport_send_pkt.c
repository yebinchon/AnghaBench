
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst_cid; } ;
struct virtio_vsock_pkt {int len; int list; scalar_t__ reply; TYPE_1__ hdr; } ;
struct vhost_vsock {int send_pkt_work; int dev; int send_pkt_list_lock; int send_pkt_list; int queued_replies; } ;


 int ENODEV ;
 int atomic_inc (int *) ;
 int le64_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct vhost_vsock* vhost_vsock_get (int ) ;
 int vhost_work_queue (int *,int *) ;
 int virtio_transport_free_pkt (struct virtio_vsock_pkt*) ;

__attribute__((used)) static int
vhost_transport_send_pkt(struct virtio_vsock_pkt *pkt)
{
 struct vhost_vsock *vsock;
 int len = pkt->len;

 rcu_read_lock();


 vsock = vhost_vsock_get(le64_to_cpu(pkt->hdr.dst_cid));
 if (!vsock) {
  rcu_read_unlock();
  virtio_transport_free_pkt(pkt);
  return -ENODEV;
 }

 if (pkt->reply)
  atomic_inc(&vsock->queued_replies);

 spin_lock_bh(&vsock->send_pkt_list_lock);
 list_add_tail(&pkt->list, &vsock->send_pkt_list);
 spin_unlock_bh(&vsock->send_pkt_list_lock);

 vhost_work_queue(&vsock->dev, &vsock->send_pkt_work);

 rcu_read_unlock();
 return len;
}
