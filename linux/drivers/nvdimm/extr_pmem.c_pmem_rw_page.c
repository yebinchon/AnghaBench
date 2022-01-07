
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmem_device {int dummy; } ;
struct page {int dummy; } ;
struct block_device {TYPE_1__* bd_queue; } ;
typedef int sector_t ;
typedef scalar_t__ blk_status_t ;
struct TYPE_2__ {struct pmem_device* queuedata; } ;


 int PAGE_SIZE ;
 int blk_status_to_errno (scalar_t__) ;
 int hpage_nr_pages (struct page*) ;
 int op_is_write (unsigned int) ;
 int page_endio (struct page*,int ,int ) ;
 scalar_t__ pmem_do_bvec (struct pmem_device*,struct page*,int,int ,unsigned int,int ) ;

__attribute__((used)) static int pmem_rw_page(struct block_device *bdev, sector_t sector,
         struct page *page, unsigned int op)
{
 struct pmem_device *pmem = bdev->bd_queue->queuedata;
 blk_status_t rc;

 rc = pmem_do_bvec(pmem, page, hpage_nr_pages(page) * PAGE_SIZE,
     0, op, sector);







 if (rc == 0)
  page_endio(page, op_is_write(op), 0);

 return blk_status_to_errno(rc);
}
