
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_uio_dev {int ll2_buf_size; int * ll2_ring; void* ll2_buf; int ll2_ring_size; void* uctrl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QEDI_PAGE_ALIGN (int) ;
 int QEDI_PAGE_SIZE ;
 int TX_RX_RING ;
 int __GFP_COMP ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int qedi_ll2_buf_size ;

__attribute__((used)) static int __qedi_alloc_uio_rings(struct qedi_uio_dev *udev)
{
 int rc = 0;

 if (udev->ll2_ring || udev->ll2_buf)
  return rc;


 udev->uctrl = (void *)get_zeroed_page(GFP_KERNEL);
 if (!udev->uctrl)
  return -ENOMEM;


 udev->ll2_ring_size = QEDI_PAGE_SIZE;
 udev->ll2_ring = (void *)get_zeroed_page(GFP_KERNEL | __GFP_COMP);
 if (!udev->ll2_ring) {
  rc = -ENOMEM;
  goto exit_alloc_ring;
 }


 udev->ll2_buf_size = TX_RX_RING * qedi_ll2_buf_size;
 udev->ll2_buf_size = QEDI_PAGE_ALIGN(udev->ll2_buf_size);
 udev->ll2_buf = (void *)__get_free_pages(GFP_KERNEL | __GFP_COMP |
       __GFP_ZERO, 2);
 if (!udev->ll2_buf) {
  rc = -ENOMEM;
  goto exit_alloc_buf;
 }
 return rc;

exit_alloc_buf:
 free_page((unsigned long)udev->ll2_ring);
 udev->ll2_ring = ((void*)0);
exit_alloc_ring:
 return rc;
}
