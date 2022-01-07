
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;
struct irq_affinity {int dummy; } ;


 scalar_t__ IS_ERR (struct virtqueue*) ;
 int PTR_ERR (struct virtqueue*) ;
 int __rproc_virtio_del_vqs (struct virtio_device*) ;
 struct virtqueue* rp_find_vq (struct virtio_device*,int ,int *,char const* const,int const) ;

__attribute__((used)) static int rproc_virtio_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
     struct virtqueue *vqs[],
     vq_callback_t *callbacks[],
     const char * const names[],
     const bool * ctx,
     struct irq_affinity *desc)
{
 int i, ret, queue_idx = 0;

 for (i = 0; i < nvqs; ++i) {
  if (!names[i]) {
   vqs[i] = ((void*)0);
   continue;
  }

  vqs[i] = rp_find_vq(vdev, queue_idx++, callbacks[i], names[i],
        ctx ? ctx[i] : 0);
  if (IS_ERR(vqs[i])) {
   ret = PTR_ERR(vqs[i]);
   goto error;
  }
 }

 return 0;

error:
 __rproc_virtio_del_vqs(vdev);
 return ret;
}
