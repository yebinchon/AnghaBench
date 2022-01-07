
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_uio_dev {int * ll2_buf; int * ll2_ring; int * uctrl; } ;


 int free_page (unsigned long) ;
 int free_pages (unsigned long,int) ;

__attribute__((used)) static void __qedi_free_uio_rings(struct qedi_uio_dev *udev)
{
 if (udev->uctrl) {
  free_page((unsigned long)udev->uctrl);
  udev->uctrl = ((void*)0);
 }

 if (udev->ll2_ring) {
  free_page((unsigned long)udev->ll2_ring);
  udev->ll2_ring = ((void*)0);
 }

 if (udev->ll2_buf) {
  free_pages((unsigned long)udev->ll2_buf, 2);
  udev->ll2_buf = ((void*)0);
 }
}
