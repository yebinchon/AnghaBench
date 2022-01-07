
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {scalar_t__ num; int * iov; } ;
struct vhost_scsi_ctx {scalar_t__ head; size_t out; size_t in; void* out_size; int out_iter; void* in_size; } ;
struct vhost_scsi {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int EAGAIN ;
 int ENXIO ;
 int WRITE ;
 int iov_iter_init (int *,int ,int *,size_t,void*) ;
 void* iov_length (int *,size_t) ;
 int pr_debug (char*,scalar_t__,size_t,size_t) ;
 scalar_t__ unlikely (int) ;
 int vhost_disable_notify (int *,struct vhost_virtqueue*) ;
 int vhost_enable_notify (int *,struct vhost_virtqueue*) ;
 scalar_t__ vhost_get_vq_desc (struct vhost_virtqueue*,int *,int ,size_t*,size_t*,int *,int *) ;

__attribute__((used)) static int
vhost_scsi_get_desc(struct vhost_scsi *vs, struct vhost_virtqueue *vq,
      struct vhost_scsi_ctx *vc)
{
 int ret = -ENXIO;

 vc->head = vhost_get_vq_desc(vq, vq->iov,
         ARRAY_SIZE(vq->iov), &vc->out, &vc->in,
         ((void*)0), ((void*)0));

 pr_debug("vhost_get_vq_desc: head: %d, out: %u in: %u\n",
   vc->head, vc->out, vc->in);


 if (unlikely(vc->head < 0))
  goto done;


 if (vc->head == vq->num) {
  if (unlikely(vhost_enable_notify(&vs->dev, vq))) {
   vhost_disable_notify(&vs->dev, vq);
   ret = -EAGAIN;
  }
  goto done;
 }





 vc->out_size = iov_length(vq->iov, vc->out);
 vc->in_size = iov_length(&vq->iov[vc->out], vc->in);
 iov_iter_init(&vc->out_iter, WRITE, vq->iov, vc->out, vc->out_size);
 ret = 0;

done:
 return ret;
}
