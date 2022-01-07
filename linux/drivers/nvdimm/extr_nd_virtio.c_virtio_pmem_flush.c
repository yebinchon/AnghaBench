
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_4__ {TYPE_2__ ret; } ;
struct virtio_pmem_request {int done; int wq_buf_avail; TYPE_1__ resp; int host_acked; int wq_buf; int list; TYPE_2__ req; } ;
struct virtio_pmem {int pmem_lock; int req_vq; int req_list; } ;
struct virtio_device {int dev; struct virtio_pmem* priv; } ;
struct scatterlist {int dummy; } ;
struct nd_region {struct virtio_device* provider_data; } ;


 int EIO ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int VIRTIO_PMEM_REQ_TYPE_FLUSH ;
 int cpu_to_le32 (int ) ;
 int dev_info (int *,char*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct virtio_pmem_request*) ;
 struct virtio_pmem_request* kmalloc (int,int ) ;
 int le32_to_cpu (TYPE_2__) ;
 int list_add_tail (int *,int *) ;
 int might_sleep () ;
 int sg_init_one (struct scatterlist*,TYPE_2__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_add_sgs (int ,struct scatterlist**,int,int,struct virtio_pmem_request*,int ) ;
 int virtqueue_kick (int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int virtio_pmem_flush(struct nd_region *nd_region)
{
 struct virtio_device *vdev = nd_region->provider_data;
 struct virtio_pmem *vpmem = vdev->priv;
 struct virtio_pmem_request *req_data;
 struct scatterlist *sgs[2], sg, ret;
 unsigned long flags;
 int err, err1;

 might_sleep();
 req_data = kmalloc(sizeof(*req_data), GFP_KERNEL);
 if (!req_data)
  return -ENOMEM;

 req_data->done = 0;
 init_waitqueue_head(&req_data->host_acked);
 init_waitqueue_head(&req_data->wq_buf);
 INIT_LIST_HEAD(&req_data->list);
 req_data->req.type = cpu_to_le32(VIRTIO_PMEM_REQ_TYPE_FLUSH);
 sg_init_one(&sg, &req_data->req, sizeof(req_data->req));
 sgs[0] = &sg;
 sg_init_one(&ret, &req_data->resp.ret, sizeof(req_data->resp));
 sgs[1] = &ret;

 spin_lock_irqsave(&vpmem->pmem_lock, flags);






 while ((err = virtqueue_add_sgs(vpmem->req_vq, sgs, 1, 1, req_data,
     GFP_ATOMIC)) == -ENOSPC) {

  dev_info(&vdev->dev, "failed to send command to virtio pmem device, no free slots in the virtqueue\n");
  req_data->wq_buf_avail = 0;
  list_add_tail(&req_data->list, &vpmem->req_list);
  spin_unlock_irqrestore(&vpmem->pmem_lock, flags);


  wait_event(req_data->wq_buf, req_data->wq_buf_avail);
  spin_lock_irqsave(&vpmem->pmem_lock, flags);
 }
 err1 = virtqueue_kick(vpmem->req_vq);
 spin_unlock_irqrestore(&vpmem->pmem_lock, flags);




 if (err || !err1) {
  dev_info(&vdev->dev, "failed to send command to virtio pmem device\n");
  err = -EIO;
 } else {

  wait_event(req_data->host_acked, req_data->done);
  err = le32_to_cpu(req_data->resp.ret);
 }

 kfree(req_data);
 return err;
}
