
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int release; struct device* parent; } ;
struct TYPE_7__ {int device; } ;
struct virtio_device {TYPE_3__ dev; int * config; TYPE_2__ id; } ;
struct device {int dummy; } ;
struct rproc_vdev {int refcount; int index; struct device dev; struct rproc* rproc; } ;
struct rproc_mem_entry {int of_resm_idx; int len; int da; scalar_t__ dma; scalar_t__ va; } ;
struct TYPE_9__ {TYPE_1__* parent; } ;
struct rproc {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_6__ {struct device_node* of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int) ;
 int dev_name (TYPE_3__*) ;
 int dev_warn (struct device*,char*,int ) ;
 int dma_declare_coherent_memory (struct device*,scalar_t__,int ,int ) ;
 int get_device (TYPE_4__*) ;
 int kref_get (int *) ;
 struct virtio_device* kzalloc (int,int ) ;
 int of_reserved_mem_device_init_by_idx (struct device*,struct device_node*,int) ;
 int put_device (TYPE_3__*) ;
 int register_virtio_device (struct virtio_device*) ;
 struct rproc_mem_entry* rproc_find_carveout_by_name (struct rproc*,char*,int ) ;
 scalar_t__ rproc_va_to_pa (scalar_t__) ;
 int rproc_virtio_config_ops ;
 int rproc_virtio_dev_release ;

int rproc_add_virtio_dev(struct rproc_vdev *rvdev, int id)
{
 struct rproc *rproc = rvdev->rproc;
 struct device *dev = &rvdev->dev;
 struct virtio_device *vdev;
 struct rproc_mem_entry *mem;
 int ret;


 mem = rproc_find_carveout_by_name(rproc, "vdev%dbuffer", rvdev->index);
 if (mem) {
  phys_addr_t pa;

  if (mem->of_resm_idx != -1) {
   struct device_node *np = rproc->dev.parent->of_node;


   ret = of_reserved_mem_device_init_by_idx(dev, np,
         mem->of_resm_idx);
   if (ret) {
    dev_err(dev, "Can't associate reserved memory\n");
    goto out;
   }
  } else {
   if (mem->va) {
    dev_warn(dev, "vdev %d buffer already mapped\n",
      rvdev->index);
    pa = rproc_va_to_pa(mem->va);
   } else {

    pa = (phys_addr_t)mem->dma;
   }


   ret = dma_declare_coherent_memory(dev, pa,
          mem->da,
          mem->len);
   if (ret < 0) {
    dev_err(dev, "Failed to associate buffer\n");
    goto out;
   }
  }
 }


 vdev = kzalloc(sizeof(*vdev), GFP_KERNEL);
 if (!vdev) {
  ret = -ENOMEM;
  goto out;
 }
 vdev->id.device = id,
 vdev->config = &rproc_virtio_config_ops,
 vdev->dev.parent = dev;
 vdev->dev.release = rproc_virtio_dev_release;
 get_device(&rproc->dev);


 kref_get(&rvdev->refcount);

 ret = register_virtio_device(vdev);
 if (ret) {
  put_device(&vdev->dev);
  dev_err(dev, "failed to register vdev: %d\n", ret);
  goto out;
 }

 dev_info(dev, "registered %s (type %d)\n", dev_name(&vdev->dev), id);

out:
 return ret;
}
