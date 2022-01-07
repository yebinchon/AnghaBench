
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_mem_entry {int node; int len; int da; } ;
struct device {int dummy; } ;
struct rproc {int mappings; int domain; struct device dev; } ;
struct fw_rsc_devmem {int len; int da; int pa; int flags; scalar_t__ reserved; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,int ,int ,int ) ;
 int dev_err (struct device*,char*,...) ;
 int iommu_map (int ,int ,int ,int ,int ) ;
 int kfree (struct rproc_mem_entry*) ;
 struct rproc_mem_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int rproc_handle_devmem(struct rproc *rproc, struct fw_rsc_devmem *rsc,
          int offset, int avail)
{
 struct rproc_mem_entry *mapping;
 struct device *dev = &rproc->dev;
 int ret;


 if (!rproc->domain)
  return -EINVAL;

 if (sizeof(*rsc) > avail) {
  dev_err(dev, "devmem rsc is truncated\n");
  return -EINVAL;
 }


 if (rsc->reserved) {
  dev_err(dev, "devmem rsc has non zero reserved bytes\n");
  return -EINVAL;
 }

 mapping = kzalloc(sizeof(*mapping), GFP_KERNEL);
 if (!mapping)
  return -ENOMEM;

 ret = iommu_map(rproc->domain, rsc->da, rsc->pa, rsc->len, rsc->flags);
 if (ret) {
  dev_err(dev, "failed to map devmem: %d\n", ret);
  goto out;
 }
 mapping->da = rsc->da;
 mapping->len = rsc->len;
 list_add_tail(&mapping->node, &rproc->mappings);

 dev_dbg(dev, "mapped devmem pa 0x%x, da 0x%x, len 0x%x\n",
  rsc->pa, rsc->da, rsc->len);

 return 0;

out:
 kfree(mapping);
 return ret;
}
