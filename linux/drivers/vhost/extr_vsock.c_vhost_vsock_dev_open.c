
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_vsock {int send_pkt_work; int send_pkt_list; int send_pkt_list_lock; struct vhost_virtqueue* vqs; int dev; int queued_replies; scalar_t__ guest_cid; } ;
struct vhost_virtqueue {int handle_kick; } ;
struct inode {int dummy; } ;
struct file {struct vhost_vsock* private_data; } ;


 int ARRAY_SIZE (struct vhost_virtqueue*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int UIO_MAXIOV ;
 int VHOST_VSOCK_PKT_WEIGHT ;
 int VHOST_VSOCK_WEIGHT ;
 size_t VSOCK_VQ_RX ;
 size_t VSOCK_VQ_TX ;
 int __GFP_RETRY_MAYFAIL ;
 int atomic_set (int *,int ) ;
 struct vhost_virtqueue** kmalloc_array (int ,int,int) ;
 struct vhost_vsock* kvmalloc (int,int) ;
 int spin_lock_init (int *) ;
 int vhost_dev_init (int *,struct vhost_virtqueue**,int ,int ,int ,int ) ;
 int vhost_transport_send_pkt_work ;
 int vhost_vsock_free (struct vhost_vsock*) ;
 int vhost_vsock_handle_rx_kick ;
 int vhost_vsock_handle_tx_kick ;
 int vhost_work_init (int *,int ) ;

__attribute__((used)) static int vhost_vsock_dev_open(struct inode *inode, struct file *file)
{
 struct vhost_virtqueue **vqs;
 struct vhost_vsock *vsock;
 int ret;




 vsock = kvmalloc(sizeof(*vsock), GFP_KERNEL | __GFP_RETRY_MAYFAIL);
 if (!vsock)
  return -ENOMEM;

 vqs = kmalloc_array(ARRAY_SIZE(vsock->vqs), sizeof(*vqs), GFP_KERNEL);
 if (!vqs) {
  ret = -ENOMEM;
  goto out;
 }

 vsock->guest_cid = 0;

 atomic_set(&vsock->queued_replies, 0);

 vqs[VSOCK_VQ_TX] = &vsock->vqs[VSOCK_VQ_TX];
 vqs[VSOCK_VQ_RX] = &vsock->vqs[VSOCK_VQ_RX];
 vsock->vqs[VSOCK_VQ_TX].handle_kick = vhost_vsock_handle_tx_kick;
 vsock->vqs[VSOCK_VQ_RX].handle_kick = vhost_vsock_handle_rx_kick;

 vhost_dev_init(&vsock->dev, vqs, ARRAY_SIZE(vsock->vqs),
         UIO_MAXIOV, VHOST_VSOCK_PKT_WEIGHT,
         VHOST_VSOCK_WEIGHT);

 file->private_data = vsock;
 spin_lock_init(&vsock->send_pkt_list_lock);
 INIT_LIST_HEAD(&vsock->send_pkt_list);
 vhost_work_init(&vsock->send_pkt_work, vhost_transport_send_pkt_work);
 return 0;

out:
 vhost_vsock_free(vsock);
 return ret;
}
