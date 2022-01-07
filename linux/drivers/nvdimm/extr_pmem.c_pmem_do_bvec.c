
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmem_device {int data_offset; int bb; void* virt_addr; } ;
struct page {int dummy; } ;
typedef int sector_t ;
typedef int phys_addr_t ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int flush_dcache_page (struct page*) ;
 int is_bad_pmem (int *,int,unsigned int) ;
 int op_is_write (unsigned int) ;
 int pmem_clear_poison (struct pmem_device*,int,unsigned int) ;
 int read_pmem (struct page*,unsigned int,void*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int write_pmem (void*,struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static blk_status_t pmem_do_bvec(struct pmem_device *pmem, struct page *page,
   unsigned int len, unsigned int off, unsigned int op,
   sector_t sector)
{
 blk_status_t rc = BLK_STS_OK;
 bool bad_pmem = 0;
 phys_addr_t pmem_off = sector * 512 + pmem->data_offset;
 void *pmem_addr = pmem->virt_addr + pmem_off;

 if (unlikely(is_bad_pmem(&pmem->bb, sector, len)))
  bad_pmem = 1;

 if (!op_is_write(op)) {
  if (unlikely(bad_pmem))
   rc = BLK_STS_IOERR;
  else {
   rc = read_pmem(page, off, pmem_addr, len);
   flush_dcache_page(page);
  }
 } else {
  flush_dcache_page(page);
  write_pmem(pmem_addr, page, off, len);
  if (unlikely(bad_pmem)) {
   rc = pmem_clear_poison(pmem, pmem_off, len);
   write_pmem(pmem_addr, page, off, len);
  }
 }

 return rc;
}
