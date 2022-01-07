
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmdev_request_header {int rc; } ;
struct vbg_dev {scalar_t__ io_port; } ;


 scalar_t__ VMMDEV_PORT_OFF_REQUEST ;
 int mb () ;
 int outl (unsigned long,scalar_t__) ;
 unsigned long virt_to_phys (void*) ;

int vbg_req_perform(struct vbg_dev *gdev, void *req)
{
 unsigned long phys_req = virt_to_phys(req);

 outl(phys_req, gdev->io_port + VMMDEV_PORT_OFF_REQUEST);




 mb();

 return ((struct vmmdev_request_header *)req)->rc;
}
