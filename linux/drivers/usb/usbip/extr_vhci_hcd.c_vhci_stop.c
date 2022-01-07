
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_hcd {struct vhci_device* vdev; } ;
struct vhci_device {int ud; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int VDEV_EVENT_REMOVED ;
 int VHCI_HC_PORTS ;
 TYPE_1__* hcd_dev (struct usb_hcd*) ;
 int hcd_name (struct usb_hcd*) ;
 int hcd_name_to_id (int ) ;
 struct vhci_hcd* hcd_to_vhci_hcd (struct usb_hcd*) ;
 int sysfs_remove_group (int *,int *) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;
 int usbip_dbg_vhci_hc (char*) ;
 int usbip_event_add (int *,int ) ;
 int usbip_stop_eh (int *) ;
 int vhci_attr_group ;
 int vhci_finish_attr_group () ;

__attribute__((used)) static void vhci_stop(struct usb_hcd *hcd)
{
 struct vhci_hcd *vhci_hcd = hcd_to_vhci_hcd(hcd);
 int id, rhport;

 usbip_dbg_vhci_hc("stop VHCI controller\n");


 id = hcd_name_to_id(hcd_name(hcd));
 if (id == 0 && usb_hcd_is_primary_hcd(hcd)) {
  sysfs_remove_group(&hcd_dev(hcd)->kobj, &vhci_attr_group);
  vhci_finish_attr_group();
 }


 for (rhport = 0; rhport < VHCI_HC_PORTS; rhport++) {
  struct vhci_device *vdev = &vhci_hcd->vdev[rhport];

  usbip_event_add(&vdev->ud, VDEV_EVENT_REMOVED);
  usbip_stop_eh(&vdev->ud);
 }
}
