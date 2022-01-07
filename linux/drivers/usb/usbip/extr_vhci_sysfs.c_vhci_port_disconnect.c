
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_hcd {struct vhci* vhci; struct vhci_device* vdev; } ;
struct TYPE_2__ {scalar_t__ status; int lock; } ;
struct vhci_device {TYPE_1__ ud; } ;
struct vhci {int lock; } ;
typedef size_t __u32 ;


 int EINVAL ;
 int VDEV_EVENT_DOWN ;
 scalar_t__ VDEV_ST_NULL ;
 int pr_err (char*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbip_dbg_vhci_sysfs (char*) ;
 int usbip_event_add (TYPE_1__*,int ) ;

__attribute__((used)) static int vhci_port_disconnect(struct vhci_hcd *vhci_hcd, __u32 rhport)
{
 struct vhci_device *vdev = &vhci_hcd->vdev[rhport];
 struct vhci *vhci = vhci_hcd->vhci;
 unsigned long flags;

 usbip_dbg_vhci_sysfs("enter\n");


 spin_lock_irqsave(&vhci->lock, flags);
 spin_lock(&vdev->ud.lock);

 if (vdev->ud.status == VDEV_ST_NULL) {
  pr_err("not connected %d\n", vdev->ud.status);


  spin_unlock(&vdev->ud.lock);
  spin_unlock_irqrestore(&vhci->lock, flags);

  return -EINVAL;
 }


 spin_unlock(&vdev->ud.lock);
 spin_unlock_irqrestore(&vhci->lock, flags);

 usbip_event_add(&vdev->ud, VDEV_EVENT_DOWN);

 return 0;
}
