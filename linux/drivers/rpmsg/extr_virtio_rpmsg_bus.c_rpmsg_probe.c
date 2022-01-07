
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtproc_info {int num_bufs; size_t buf_size; struct virtio_device* vdev; int bufs_dma; struct virtqueue* rvq; int ns_ept; struct virtqueue* svq; void* rbufs; void* sbufs; int sendq; int tx_lock; int endpoints_lock; int endpoints; } ;
struct TYPE_6__ {int parent; } ;
struct virtio_device {TYPE_1__* config; TYPE_2__ dev; struct virtproc_info* priv; } ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {int (* del_vqs ) (struct virtio_device*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t MAX_RPMSG_BUF_SIZE ;
 int MAX_RPMSG_NUM_BUFS ;
 int RPMSG_NS_ADDR ;
 int VIRTIO_RPMSG_F_NS ;
 int WARN_ON (int) ;
 int __rpmsg_create_ept (struct virtproc_info*,int *,int ,struct virtproc_info*,int ) ;
 int dev_dbg (TYPE_2__*,char*,void*,int *) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*) ;
 void* dma_alloc_coherent (int ,size_t,int *,int ) ;
 int dma_free_coherent (int ,size_t,void*,int ) ;
 int idr_init (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct virtproc_info*) ;
 struct virtproc_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rpmsg_ns_cb ;
 int * rpmsg_recv_done ;
 int rpmsg_sg_init (struct scatterlist*,void*,int) ;
 int * rpmsg_xmit_done ;
 int stub1 (struct virtio_device*) ;
 int virtio_device_ready (struct virtio_device*) ;
 int virtio_find_vqs (struct virtio_device*,int,struct virtqueue**,int **,char const* const*,int *) ;
 scalar_t__ virtio_has_feature (struct virtio_device*,int ) ;
 int virtqueue_add_inbuf (struct virtqueue*,struct scatterlist*,int,void*,int ) ;
 int virtqueue_disable_cb (struct virtqueue*) ;
 int virtqueue_get_vring_size (struct virtqueue*) ;
 int virtqueue_kick_prepare (struct virtqueue*) ;
 int virtqueue_notify (struct virtqueue*) ;

__attribute__((used)) static int rpmsg_probe(struct virtio_device *vdev)
{
 vq_callback_t *vq_cbs[] = { rpmsg_recv_done, rpmsg_xmit_done };
 static const char * const names[] = { "input", "output" };
 struct virtqueue *vqs[2];
 struct virtproc_info *vrp;
 void *bufs_va;
 int err = 0, i;
 size_t total_buf_space;
 bool notify;

 vrp = kzalloc(sizeof(*vrp), GFP_KERNEL);
 if (!vrp)
  return -ENOMEM;

 vrp->vdev = vdev;

 idr_init(&vrp->endpoints);
 mutex_init(&vrp->endpoints_lock);
 mutex_init(&vrp->tx_lock);
 init_waitqueue_head(&vrp->sendq);


 err = virtio_find_vqs(vdev, 2, vqs, vq_cbs, names, ((void*)0));
 if (err)
  goto free_vrp;

 vrp->rvq = vqs[0];
 vrp->svq = vqs[1];


 WARN_ON(virtqueue_get_vring_size(vrp->rvq) !=
  virtqueue_get_vring_size(vrp->svq));


 if (virtqueue_get_vring_size(vrp->rvq) < MAX_RPMSG_NUM_BUFS / 2)
  vrp->num_bufs = virtqueue_get_vring_size(vrp->rvq) * 2;
 else
  vrp->num_bufs = MAX_RPMSG_NUM_BUFS;

 vrp->buf_size = MAX_RPMSG_BUF_SIZE;

 total_buf_space = vrp->num_bufs * vrp->buf_size;


 bufs_va = dma_alloc_coherent(vdev->dev.parent,
         total_buf_space, &vrp->bufs_dma,
         GFP_KERNEL);
 if (!bufs_va) {
  err = -ENOMEM;
  goto vqs_del;
 }

 dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
  bufs_va, &vrp->bufs_dma);


 vrp->rbufs = bufs_va;


 vrp->sbufs = bufs_va + total_buf_space / 2;


 for (i = 0; i < vrp->num_bufs / 2; i++) {
  struct scatterlist sg;
  void *cpu_addr = vrp->rbufs + i * vrp->buf_size;

  rpmsg_sg_init(&sg, cpu_addr, vrp->buf_size);

  err = virtqueue_add_inbuf(vrp->rvq, &sg, 1, cpu_addr,
       GFP_KERNEL);
  WARN_ON(err);
 }


 virtqueue_disable_cb(vrp->svq);

 vdev->priv = vrp;


 if (virtio_has_feature(vdev, VIRTIO_RPMSG_F_NS)) {

  vrp->ns_ept = __rpmsg_create_ept(vrp, ((void*)0), rpmsg_ns_cb,
      vrp, RPMSG_NS_ADDR);
  if (!vrp->ns_ept) {
   dev_err(&vdev->dev, "failed to create the ns ept\n");
   err = -ENOMEM;
   goto free_coherent;
  }
 }





 notify = virtqueue_kick_prepare(vrp->rvq);


 virtio_device_ready(vdev);






 if (notify)
  virtqueue_notify(vrp->rvq);

 dev_info(&vdev->dev, "rpmsg host is online\n");

 return 0;

free_coherent:
 dma_free_coherent(vdev->dev.parent, total_buf_space,
     bufs_va, vrp->bufs_dma);
vqs_del:
 vdev->config->del_vqs(vrp->vdev);
free_vrp:
 kfree(vrp);
 return err;
}
