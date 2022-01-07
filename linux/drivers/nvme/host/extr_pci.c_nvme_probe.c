
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {unsigned long driver_data; } ;
struct pci_dev {int dev; } ;
struct nvme_queue {int dummy; } ;
struct TYPE_4__ {int device; int reset_work; } ;
struct nvme_dev {struct nvme_dev* queues; int dev; int iod_mempool; TYPE_1__ ctrl; int shutdown_lock; int remove_work; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int NUMA_NO_NODE ;
 int NVME_MAX_KB_SZ ;
 int NVME_MAX_SEGS ;
 size_t PAGE_SIZE ;
 int WARN_ON_ONCE (int) ;
 int async_schedule (int ,struct nvme_dev*) ;
 unsigned long check_vendor_combination_bug (struct pci_dev*) ;
 int dev_info (int ,char*,int ) ;
 int dev_name (int *) ;
 int dev_to_node (int *) ;
 int first_memory_node ;
 int get_device (int *) ;
 struct nvme_dev* kcalloc_node (int ,int,int ,int) ;
 int kfree (struct nvme_dev*) ;
 struct nvme_dev* kzalloc_node (int,int ,int) ;
 int max_queue_count () ;
 int mempool_create_node (int,int ,int ,void*,int ,int) ;
 int mempool_destroy (int ) ;
 int mempool_kfree ;
 int mempool_kmalloc ;
 int mutex_init (int *) ;
 int nvme_async_probe ;
 int nvme_dev_map (struct nvme_dev*) ;
 int nvme_dev_unmap (struct nvme_dev*) ;
 int nvme_get_ctrl (TYPE_1__*) ;
 int nvme_init_ctrl (TYPE_1__*,int *,int *,unsigned long) ;
 int nvme_pci_ctrl_ops ;
 size_t nvme_pci_iod_alloc_size (struct nvme_dev*,int ,int ,int) ;
 int nvme_release_prp_pools (struct nvme_dev*) ;
 int nvme_remove_dead_ctrl_work ;
 int nvme_reset_ctrl (TYPE_1__*) ;
 int nvme_reset_work ;
 int nvme_setup_prp_pools (struct nvme_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct nvme_dev*) ;
 int put_device (int ) ;
 int set_dev_node (int *,int ) ;

__attribute__((used)) static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int node, result = -ENOMEM;
 struct nvme_dev *dev;
 unsigned long quirks = id->driver_data;
 size_t alloc_size;

 node = dev_to_node(&pdev->dev);
 if (node == NUMA_NO_NODE)
  set_dev_node(&pdev->dev, first_memory_node);

 dev = kzalloc_node(sizeof(*dev), GFP_KERNEL, node);
 if (!dev)
  return -ENOMEM;

 dev->queues = kcalloc_node(max_queue_count(), sizeof(struct nvme_queue),
     GFP_KERNEL, node);
 if (!dev->queues)
  goto free;

 dev->dev = get_device(&pdev->dev);
 pci_set_drvdata(pdev, dev);

 result = nvme_dev_map(dev);
 if (result)
  goto put_pci;

 INIT_WORK(&dev->ctrl.reset_work, nvme_reset_work);
 INIT_WORK(&dev->remove_work, nvme_remove_dead_ctrl_work);
 mutex_init(&dev->shutdown_lock);

 result = nvme_setup_prp_pools(dev);
 if (result)
  goto unmap;

 quirks |= check_vendor_combination_bug(pdev);





 alloc_size = nvme_pci_iod_alloc_size(dev, NVME_MAX_KB_SZ,
      NVME_MAX_SEGS, 1);
 WARN_ON_ONCE(alloc_size > PAGE_SIZE);

 dev->iod_mempool = mempool_create_node(1, mempool_kmalloc,
      mempool_kfree,
      (void *) alloc_size,
      GFP_KERNEL, node);
 if (!dev->iod_mempool) {
  result = -ENOMEM;
  goto release_pools;
 }

 result = nvme_init_ctrl(&dev->ctrl, &pdev->dev, &nvme_pci_ctrl_ops,
   quirks);
 if (result)
  goto release_mempool;

 dev_info(dev->ctrl.device, "pci function %s\n", dev_name(&pdev->dev));

 nvme_reset_ctrl(&dev->ctrl);
 nvme_get_ctrl(&dev->ctrl);
 async_schedule(nvme_async_probe, dev);

 return 0;

 release_mempool:
 mempool_destroy(dev->iod_mempool);
 release_pools:
 nvme_release_prp_pools(dev);
 unmap:
 nvme_dev_unmap(dev);
 put_pci:
 put_device(dev->dev);
 free:
 kfree(dev->queues);
 kfree(dev);
 return result;
}
