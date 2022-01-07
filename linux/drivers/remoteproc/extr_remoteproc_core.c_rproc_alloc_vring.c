
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rproc_vring {int notifyid; int align; int len; } ;
struct rproc_vdev {int rsc_offset; int index; struct rproc_vring* vring; struct rproc* rproc; } ;
struct rproc_mem_entry {int dummy; } ;
struct device {int dummy; } ;
struct rproc {int max_notifyid; int notifyids; scalar_t__ table_ptr; struct device dev; } ;
struct fw_rsc_vdev {TYPE_1__* vring; } ;
struct TYPE_2__ {int notifyid; int da; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_ALIGN (int ) ;
 int dev_err (struct device*,char*,...) ;
 int idr_alloc (int *,struct rproc_vring*,int ,int ,int ) ;
 int rproc_add_carveout (struct rproc*,struct rproc_mem_entry*) ;
 int rproc_alloc_carveout ;
 scalar_t__ rproc_check_carveout_da (struct rproc*,struct rproc_mem_entry*,int ,int) ;
 struct rproc_mem_entry* rproc_find_carveout_by_name (struct rproc*,char*,int ,int) ;
 struct rproc_mem_entry* rproc_mem_entry_init (struct device*,int ,int ,int,int ,int ,int ,char*,int ,int) ;
 int rproc_release_carveout ;
 int vring_size (int ,int ) ;

int rproc_alloc_vring(struct rproc_vdev *rvdev, int i)
{
 struct rproc *rproc = rvdev->rproc;
 struct device *dev = &rproc->dev;
 struct rproc_vring *rvring = &rvdev->vring[i];
 struct fw_rsc_vdev *rsc;
 int ret, size, notifyid;
 struct rproc_mem_entry *mem;


 size = PAGE_ALIGN(vring_size(rvring->len, rvring->align));

 rsc = (void *)rproc->table_ptr + rvdev->rsc_offset;


 mem = rproc_find_carveout_by_name(rproc, "vdev%dvring%d", rvdev->index,
       i);
 if (mem) {
  if (rproc_check_carveout_da(rproc, mem, rsc->vring[i].da, size))
   return -ENOMEM;
 } else {

  mem = rproc_mem_entry_init(dev, 0, 0, size, rsc->vring[i].da,
        rproc_alloc_carveout,
        rproc_release_carveout,
        "vdev%dvring%d",
        rvdev->index, i);
  if (!mem) {
   dev_err(dev, "Can't allocate memory entry structure\n");
   return -ENOMEM;
  }

  rproc_add_carveout(rproc, mem);
 }






 ret = idr_alloc(&rproc->notifyids, rvring, 0, 0, GFP_KERNEL);
 if (ret < 0) {
  dev_err(dev, "idr_alloc failed: %d\n", ret);
  return ret;
 }
 notifyid = ret;


 if (notifyid > rproc->max_notifyid)
  rproc->max_notifyid = notifyid;

 rvring->notifyid = notifyid;


 rsc->vring[i].notifyid = notifyid;
 return 0;
}
