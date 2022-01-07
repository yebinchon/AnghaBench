
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_mmio_device {int pdev; } ;
struct virtio_device {int dev; } ;
struct irq_affinity {int dummy; } ;


 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct virtqueue*) ;
 int PTR_ERR (struct virtqueue*) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int platform_get_irq (int ,int ) ;
 int request_irq (int,int ,int ,int ,struct virtio_mmio_device*) ;
 struct virtio_mmio_device* to_virtio_mmio_device (struct virtio_device*) ;
 int vm_del_vqs (struct virtio_device*) ;
 int vm_interrupt ;
 struct virtqueue* vm_setup_vq (struct virtio_device*,int ,int *,char const* const,int const) ;

__attribute__((used)) static int vm_find_vqs(struct virtio_device *vdev, unsigned nvqs,
         struct virtqueue *vqs[],
         vq_callback_t *callbacks[],
         const char * const names[],
         const bool *ctx,
         struct irq_affinity *desc)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vdev);
 int irq = platform_get_irq(vm_dev->pdev, 0);
 int i, err, queue_idx = 0;

 if (irq < 0) {
  dev_err(&vdev->dev, "Cannot get IRQ resource\n");
  return irq;
 }

 err = request_irq(irq, vm_interrupt, IRQF_SHARED,
   dev_name(&vdev->dev), vm_dev);
 if (err)
  return err;

 for (i = 0; i < nvqs; ++i) {
  if (!names[i]) {
   vqs[i] = ((void*)0);
   continue;
  }

  vqs[i] = vm_setup_vq(vdev, queue_idx++, callbacks[i], names[i],
         ctx ? ctx[i] : 0);
  if (IS_ERR(vqs[i])) {
   vm_del_vqs(vdev);
   return PTR_ERR(vqs[i]);
  }
 }

 return 0;
}
