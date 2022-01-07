
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int release; int * parent; } ;
struct TYPE_4__ {void* vendor; void* device; } ;
struct TYPE_5__ {TYPE_3__ dev; TYPE_1__ id; int * config; } ;
struct virtio_mmio_device {int version; TYPE_2__ vdev; int * base; int lock; int virtqueues; struct platform_device* pdev; } ;
struct resource {int start; } ;
struct platform_device {int dev; int name; } ;


 int DMA_BIT_MASK (int) ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VIRTIO_MMIO_DEVICE_ID ;
 int VIRTIO_MMIO_GUEST_PAGE_SIZE ;
 int VIRTIO_MMIO_MAGIC_VALUE ;
 int VIRTIO_MMIO_VENDOR_ID ;
 int VIRTIO_MMIO_VERSION ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,...) ;
 int * devm_ioremap (int *,int ,int ) ;
 struct virtio_mmio_device* devm_kzalloc (int *,int,int ) ;
 int devm_request_mem_region (int *,int ,int ,int ) ;
 int dma_set_coherent_mask (int *,int ) ;
 int dma_set_mask (int *,int ) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct virtio_mmio_device*) ;
 int put_device (TYPE_3__*) ;
 void* readl (int *) ;
 int register_virtio_device (TYPE_2__*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int virtio_mmio_config_ops ;
 int virtio_mmio_release_dev ;
 int writel (int ,int *) ;

__attribute__((used)) static int virtio_mmio_probe(struct platform_device *pdev)
{
 struct virtio_mmio_device *vm_dev;
 struct resource *mem;
 unsigned long magic;
 int rc;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mem)
  return -EINVAL;

 if (!devm_request_mem_region(&pdev->dev, mem->start,
   resource_size(mem), pdev->name))
  return -EBUSY;

 vm_dev = devm_kzalloc(&pdev->dev, sizeof(*vm_dev), GFP_KERNEL);
 if (!vm_dev)
  return -ENOMEM;

 vm_dev->vdev.dev.parent = &pdev->dev;
 vm_dev->vdev.dev.release = virtio_mmio_release_dev;
 vm_dev->vdev.config = &virtio_mmio_config_ops;
 vm_dev->pdev = pdev;
 INIT_LIST_HEAD(&vm_dev->virtqueues);
 spin_lock_init(&vm_dev->lock);

 vm_dev->base = devm_ioremap(&pdev->dev, mem->start, resource_size(mem));
 if (vm_dev->base == ((void*)0))
  return -EFAULT;


 magic = readl(vm_dev->base + VIRTIO_MMIO_MAGIC_VALUE);
 if (magic != ('v' | 'i' << 8 | 'r' << 16 | 't' << 24)) {
  dev_warn(&pdev->dev, "Wrong magic value 0x%08lx!\n", magic);
  return -ENODEV;
 }


 vm_dev->version = readl(vm_dev->base + VIRTIO_MMIO_VERSION);
 if (vm_dev->version < 1 || vm_dev->version > 2) {
  dev_err(&pdev->dev, "Version %ld not supported!\n",
    vm_dev->version);
  return -ENXIO;
 }

 vm_dev->vdev.id.device = readl(vm_dev->base + VIRTIO_MMIO_DEVICE_ID);
 if (vm_dev->vdev.id.device == 0) {




  return -ENODEV;
 }
 vm_dev->vdev.id.vendor = readl(vm_dev->base + VIRTIO_MMIO_VENDOR_ID);

 if (vm_dev->version == 1) {
  writel(PAGE_SIZE, vm_dev->base + VIRTIO_MMIO_GUEST_PAGE_SIZE);

  rc = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));




  if (!rc)
   dma_set_coherent_mask(&pdev->dev,
           DMA_BIT_MASK(32 + PAGE_SHIFT));
 } else {
  rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 }
 if (rc)
  rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (rc)
  dev_warn(&pdev->dev, "Failed to enable 64-bit or 32-bit DMA.  Trying to continue, but this might not work.\n");

 platform_set_drvdata(pdev, vm_dev);

 rc = register_virtio_device(&vm_dev->vdev);
 if (rc)
  put_device(&vm_dev->vdev.dev);

 return rc;
}
