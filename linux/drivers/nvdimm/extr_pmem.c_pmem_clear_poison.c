
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmem_device {int data_offset; int phys_addr; int virt_addr; scalar_t__ bb_state; int bb; } ;
struct device {int dummy; } ;
typedef int sector_t ;
typedef int phys_addr_t ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int arch_invalidate_pmem (int,unsigned int) ;
 int badblocks_clear (int *,int,long) ;
 int dev_dbg (struct device*,char*,unsigned long long,long,char*) ;
 int hwpoison_clear (struct pmem_device*,int,long) ;
 long nvdimm_clear_poison (struct device*,int,unsigned int) ;
 int sysfs_notify_dirent (scalar_t__) ;
 struct device* to_dev (struct pmem_device*) ;

__attribute__((used)) static blk_status_t pmem_clear_poison(struct pmem_device *pmem,
  phys_addr_t offset, unsigned int len)
{
 struct device *dev = to_dev(pmem);
 sector_t sector;
 long cleared;
 blk_status_t rc = BLK_STS_OK;

 sector = (offset - pmem->data_offset) / 512;

 cleared = nvdimm_clear_poison(dev, pmem->phys_addr + offset, len);
 if (cleared < len)
  rc = BLK_STS_IOERR;
 if (cleared > 0 && cleared / 512) {
  hwpoison_clear(pmem, pmem->phys_addr + offset, cleared);
  cleared /= 512;
  dev_dbg(dev, "%#llx clear %ld sector%s\n",
    (unsigned long long) sector, cleared,
    cleared > 1 ? "s" : "");
  badblocks_clear(&pmem->bb, sector, cleared);
  if (pmem->bb_state)
   sysfs_notify_dirent(pmem->bb_state);
 }

 arch_invalidate_pmem(pmem->virt_addr + offset, len);

 return rc;
}
