
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct virtqueue {struct virtio_mmio_vq_info* priv; } ;
struct virtio_mmio_vq_info {int node; struct virtqueue* vq; } ;
struct virtio_mmio_device {int version; scalar_t__ base; int lock; int virtqueues; } ;
struct virtio_device {int dev; } ;


 int E2BIG ;
 int ENOENT ;
 int ENOMEM ;
 struct virtqueue* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ VIRTIO_MMIO_QUEUE_ALIGN ;
 scalar_t__ VIRTIO_MMIO_QUEUE_AVAIL_HIGH ;
 scalar_t__ VIRTIO_MMIO_QUEUE_AVAIL_LOW ;
 scalar_t__ VIRTIO_MMIO_QUEUE_DESC_HIGH ;
 scalar_t__ VIRTIO_MMIO_QUEUE_DESC_LOW ;
 scalar_t__ VIRTIO_MMIO_QUEUE_NUM ;
 scalar_t__ VIRTIO_MMIO_QUEUE_NUM_MAX ;
 scalar_t__ VIRTIO_MMIO_QUEUE_PFN ;
 scalar_t__ VIRTIO_MMIO_QUEUE_READY ;
 scalar_t__ VIRTIO_MMIO_QUEUE_SEL ;
 scalar_t__ VIRTIO_MMIO_QUEUE_USED_HIGH ;
 scalar_t__ VIRTIO_MMIO_QUEUE_USED_LOW ;
 int VIRTIO_MMIO_VRING_ALIGN ;
 int WARN_ON (int) ;
 int dev_err (int *,char*,int) ;
 int kfree (struct virtio_mmio_vq_info*) ;
 struct virtio_mmio_vq_info* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virtio_mmio_device* to_virtio_mmio_device (struct virtio_device*) ;
 int virtqueue_get_avail_addr (struct virtqueue*) ;
 int virtqueue_get_desc_addr (struct virtqueue*) ;
 int virtqueue_get_used_addr (struct virtqueue*) ;
 int virtqueue_get_vring_size (struct virtqueue*) ;
 int vm_notify ;
 struct virtqueue* vring_create_virtqueue (unsigned int,unsigned int,int ,struct virtio_device*,int,int,int,int ,void (*) (struct virtqueue*),char const*) ;
 int vring_del_virtqueue (struct virtqueue*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static struct virtqueue *vm_setup_vq(struct virtio_device *vdev, unsigned index,
      void (*callback)(struct virtqueue *vq),
      const char *name, bool ctx)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vdev);
 struct virtio_mmio_vq_info *info;
 struct virtqueue *vq;
 unsigned long flags;
 unsigned int num;
 int err;

 if (!name)
  return ((void*)0);


 writel(index, vm_dev->base + VIRTIO_MMIO_QUEUE_SEL);


 if (readl(vm_dev->base + (vm_dev->version == 1 ?
   VIRTIO_MMIO_QUEUE_PFN : VIRTIO_MMIO_QUEUE_READY))) {
  err = -ENOENT;
  goto error_available;
 }


 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info) {
  err = -ENOMEM;
  goto error_kmalloc;
 }

 num = readl(vm_dev->base + VIRTIO_MMIO_QUEUE_NUM_MAX);
 if (num == 0) {
  err = -ENOENT;
  goto error_new_virtqueue;
 }


 vq = vring_create_virtqueue(index, num, VIRTIO_MMIO_VRING_ALIGN, vdev,
     1, 1, ctx, vm_notify, callback, name);
 if (!vq) {
  err = -ENOMEM;
  goto error_new_virtqueue;
 }


 writel(virtqueue_get_vring_size(vq), vm_dev->base + VIRTIO_MMIO_QUEUE_NUM);
 if (vm_dev->version == 1) {
  u64 q_pfn = virtqueue_get_desc_addr(vq) >> PAGE_SHIFT;






  if (q_pfn >> 32) {
   dev_err(&vdev->dev,
    "platform bug: legacy virtio-mmio must not be used with RAM above 0x%llxGB\n",
    0x1ULL << (32 + PAGE_SHIFT - 30));
   err = -E2BIG;
   goto error_bad_pfn;
  }

  writel(PAGE_SIZE, vm_dev->base + VIRTIO_MMIO_QUEUE_ALIGN);
  writel(q_pfn, vm_dev->base + VIRTIO_MMIO_QUEUE_PFN);
 } else {
  u64 addr;

  addr = virtqueue_get_desc_addr(vq);
  writel((u32)addr, vm_dev->base + VIRTIO_MMIO_QUEUE_DESC_LOW);
  writel((u32)(addr >> 32),
    vm_dev->base + VIRTIO_MMIO_QUEUE_DESC_HIGH);

  addr = virtqueue_get_avail_addr(vq);
  writel((u32)addr, vm_dev->base + VIRTIO_MMIO_QUEUE_AVAIL_LOW);
  writel((u32)(addr >> 32),
    vm_dev->base + VIRTIO_MMIO_QUEUE_AVAIL_HIGH);

  addr = virtqueue_get_used_addr(vq);
  writel((u32)addr, vm_dev->base + VIRTIO_MMIO_QUEUE_USED_LOW);
  writel((u32)(addr >> 32),
    vm_dev->base + VIRTIO_MMIO_QUEUE_USED_HIGH);

  writel(1, vm_dev->base + VIRTIO_MMIO_QUEUE_READY);
 }

 vq->priv = info;
 info->vq = vq;

 spin_lock_irqsave(&vm_dev->lock, flags);
 list_add(&info->node, &vm_dev->virtqueues);
 spin_unlock_irqrestore(&vm_dev->lock, flags);

 return vq;

error_bad_pfn:
 vring_del_virtqueue(vq);
error_new_virtqueue:
 if (vm_dev->version == 1) {
  writel(0, vm_dev->base + VIRTIO_MMIO_QUEUE_PFN);
 } else {
  writel(0, vm_dev->base + VIRTIO_MMIO_QUEUE_READY);
  WARN_ON(readl(vm_dev->base + VIRTIO_MMIO_QUEUE_READY));
 }
 kfree(info);
error_kmalloc:
error_available:
 return ERR_PTR(err);
}
