
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;
struct irq_affinity {int dummy; } ;


 int vp_find_vqs_intx (struct virtio_device*,unsigned int,struct virtqueue**,int **,char const* const*,int const*) ;
 int vp_find_vqs_msix (struct virtio_device*,unsigned int,struct virtqueue**,int **,char const* const*,int,int const*,struct irq_affinity*) ;

int vp_find_vqs(struct virtio_device *vdev, unsigned nvqs,
  struct virtqueue *vqs[], vq_callback_t *callbacks[],
  const char * const names[], const bool *ctx,
  struct irq_affinity *desc)
{
 int err;


 err = vp_find_vqs_msix(vdev, nvqs, vqs, callbacks, names, 1, ctx, desc);
 if (!err)
  return 0;

 err = vp_find_vqs_msix(vdev, nvqs, vqs, callbacks, names, 0, ctx, desc);
 if (!err)
  return 0;

 return vp_find_vqs_intx(vdev, nvqs, vqs, callbacks, names, ctx);
}
