
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_mem_entry {int rsc_offset; int flags; } ;
struct device {int dummy; } ;
struct rproc {struct device dev; } ;
struct fw_rsc_carveout {int flags; int name; int da; int len; int pa; scalar_t__ reserved; } ;


 int EINVAL ;
 int ENOMEM ;
 int FW_RSC_ADDR_ANY ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int rproc_add_carveout (struct rproc*,struct rproc_mem_entry*) ;
 int rproc_alloc_carveout ;
 scalar_t__ rproc_check_carveout_da (struct rproc*,struct rproc_mem_entry*,int ,int ) ;
 struct rproc_mem_entry* rproc_find_carveout_by_name (struct rproc*,int ) ;
 struct rproc_mem_entry* rproc_mem_entry_init (struct device*,int ,int ,int ,int ,int ,int ,int ) ;
 int rproc_release_carveout ;

__attribute__((used)) static int rproc_handle_carveout(struct rproc *rproc,
     struct fw_rsc_carveout *rsc,
     int offset, int avail)
{
 struct rproc_mem_entry *carveout;
 struct device *dev = &rproc->dev;

 if (sizeof(*rsc) > avail) {
  dev_err(dev, "carveout rsc is truncated\n");
  return -EINVAL;
 }


 if (rsc->reserved) {
  dev_err(dev, "carveout rsc has non zero reserved bytes\n");
  return -EINVAL;
 }

 dev_dbg(dev, "carveout rsc: name: %s, da 0x%x, pa 0x%x, len 0x%x, flags 0x%x\n",
  rsc->name, rsc->da, rsc->pa, rsc->len, rsc->flags);





 carveout = rproc_find_carveout_by_name(rproc, rsc->name);

 if (carveout) {
  if (carveout->rsc_offset != FW_RSC_ADDR_ANY) {
   dev_err(dev,
    "Carveout already associated to resource table\n");
   return -ENOMEM;
  }

  if (rproc_check_carveout_da(rproc, carveout, rsc->da, rsc->len))
   return -ENOMEM;


  carveout->rsc_offset = offset;
  carveout->flags = rsc->flags;

  return 0;
 }


 carveout = rproc_mem_entry_init(dev, 0, 0, rsc->len, rsc->da,
     rproc_alloc_carveout,
     rproc_release_carveout, rsc->name);
 if (!carveout) {
  dev_err(dev, "Can't allocate memory entry structure\n");
  return -ENOMEM;
 }

 carveout->flags = rsc->flags;
 carveout->rsc_offset = offset;
 rproc_add_carveout(rproc, carveout);

 return 0;
}
