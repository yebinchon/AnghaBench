
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* parent; int release; int dma_pfn_offset; } ;
struct TYPE_13__ {int stop; int start; } ;
struct rproc_vdev {int index; int rsc_offset; TYPE_1__ dev; int * vring; TYPE_2__ subdev; int node; struct rproc* rproc; int id; int refcount; } ;
struct device {TYPE_4__* parent; } ;
struct rproc {int rvdevs; struct device dev; int nb_vdev; } ;
struct fw_rsc_vdev_vring {int dummy; } ;
struct fw_rsc_vdev {int num_of_vrings; int id; int config_len; int dfeatures; scalar_t__* reserved; } ;
typedef int name ;
struct TYPE_14__ {int dma_pfn_offset; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (TYPE_4__*) ;
 int dev_set_drvdata (TYPE_1__*,struct rproc_vdev*) ;
 int dev_set_name (TYPE_1__*,char*,int ,char*) ;
 int dev_warn (struct device*,char*,int ,int) ;
 int device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int dma_coerce_mask_and_coherent (TYPE_1__*,int ) ;
 int dma_get_mask (TYPE_4__*) ;
 int get_dma_ops (TYPE_4__*) ;
 int kref_init (int *) ;
 struct rproc_vdev* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int put_device (TYPE_1__*) ;
 int rproc_add_subdev (struct rproc*,TYPE_2__*) ;
 int rproc_alloc_vring (struct rproc_vdev*,int) ;
 int rproc_free_vring (int *) ;
 int rproc_parse_vring (struct rproc_vdev*,struct fw_rsc_vdev*,int) ;
 int rproc_rvdev_release ;
 int rproc_vdev_do_start ;
 int rproc_vdev_do_stop ;
 int set_dma_ops (TYPE_1__*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int rproc_handle_vdev(struct rproc *rproc, struct fw_rsc_vdev *rsc,
        int offset, int avail)
{
 struct device *dev = &rproc->dev;
 struct rproc_vdev *rvdev;
 int i, ret;
 char name[16];


 if (sizeof(*rsc) + rsc->num_of_vrings * sizeof(struct fw_rsc_vdev_vring)
   + rsc->config_len > avail) {
  dev_err(dev, "vdev rsc is truncated\n");
  return -EINVAL;
 }


 if (rsc->reserved[0] || rsc->reserved[1]) {
  dev_err(dev, "vdev rsc has non zero reserved bytes\n");
  return -EINVAL;
 }

 dev_dbg(dev, "vdev rsc: id %d, dfeatures 0x%x, cfg len %d, %d vrings\n",
  rsc->id, rsc->dfeatures, rsc->config_len, rsc->num_of_vrings);


 if (rsc->num_of_vrings > ARRAY_SIZE(rvdev->vring)) {
  dev_err(dev, "too many vrings: %d\n", rsc->num_of_vrings);
  return -EINVAL;
 }

 rvdev = kzalloc(sizeof(*rvdev), GFP_KERNEL);
 if (!rvdev)
  return -ENOMEM;

 kref_init(&rvdev->refcount);

 rvdev->id = rsc->id;
 rvdev->rproc = rproc;
 rvdev->index = rproc->nb_vdev++;


 snprintf(name, sizeof(name), "vdev%dbuffer", rvdev->index);
 rvdev->dev.parent = rproc->dev.parent;
 rvdev->dev.dma_pfn_offset = rproc->dev.parent->dma_pfn_offset;
 rvdev->dev.release = rproc_rvdev_release;
 dev_set_name(&rvdev->dev, "%s#%s", dev_name(rvdev->dev.parent), name);
 dev_set_drvdata(&rvdev->dev, rvdev);

 ret = device_register(&rvdev->dev);
 if (ret) {
  put_device(&rvdev->dev);
  return ret;
 }

 set_dma_ops(&rvdev->dev, get_dma_ops(rproc->dev.parent));

 ret = dma_coerce_mask_and_coherent(&rvdev->dev,
        dma_get_mask(rproc->dev.parent));
 if (ret) {
  dev_warn(dev,
    "Failed to set DMA mask %llx. Trying to continue... %x\n",
    dma_get_mask(rproc->dev.parent), ret);
 }


 for (i = 0; i < rsc->num_of_vrings; i++) {
  ret = rproc_parse_vring(rvdev, rsc, i);
  if (ret)
   goto free_rvdev;
 }


 rvdev->rsc_offset = offset;


 for (i = 0; i < rsc->num_of_vrings; i++) {
  ret = rproc_alloc_vring(rvdev, i);
  if (ret)
   goto unwind_vring_allocations;
 }

 list_add_tail(&rvdev->node, &rproc->rvdevs);

 rvdev->subdev.start = rproc_vdev_do_start;
 rvdev->subdev.stop = rproc_vdev_do_stop;

 rproc_add_subdev(rproc, &rvdev->subdev);

 return 0;

unwind_vring_allocations:
 for (i--; i >= 0; i--)
  rproc_free_vring(&rvdev->vring[i]);
free_rvdev:
 device_unregister(&rvdev->dev);
 return ret;
}
