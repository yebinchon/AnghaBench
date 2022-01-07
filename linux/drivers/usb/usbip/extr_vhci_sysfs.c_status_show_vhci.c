
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vhci_hcd {struct vhci* vhci; } ;
struct TYPE_7__ {int lock; } ;
struct vhci_device {TYPE_3__ ud; } ;
struct vhci {int lock; TYPE_2__* vhci_hcd_ss; TYPE_1__* vhci_hcd_hs; } ;
struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_8__ {struct platform_device* pdev; } ;
struct TYPE_6__ {struct vhci_device* vdev; } ;
struct TYPE_5__ {struct vhci_device* vdev; } ;


 int HUB_SPEED_HIGH ;
 int HUB_SPEED_SUPER ;
 int VHCI_HC_PORTS ;
 int VHCI_PORTS ;
 struct vhci_hcd* hcd_to_vhci_hcd (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int port_show_vhci (char**,int ,int,struct vhci_device*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbip_dbg_vhci_sysfs (char*) ;
 TYPE_4__* vhcis ;

__attribute__((used)) static ssize_t status_show_vhci(int pdev_nr, char *out)
{
 struct platform_device *pdev = vhcis[pdev_nr].pdev;
 struct vhci *vhci;
 struct usb_hcd *hcd;
 struct vhci_hcd *vhci_hcd;
 char *s = out;
 int i;
 unsigned long flags;

 if (!pdev || !out) {
  usbip_dbg_vhci_sysfs("show status error\n");
  return 0;
 }

 hcd = platform_get_drvdata(pdev);
 vhci_hcd = hcd_to_vhci_hcd(hcd);
 vhci = vhci_hcd->vhci;

 spin_lock_irqsave(&vhci->lock, flags);

 for (i = 0; i < VHCI_HC_PORTS; i++) {
  struct vhci_device *vdev = &vhci->vhci_hcd_hs->vdev[i];

  spin_lock(&vdev->ud.lock);
  port_show_vhci(&out, HUB_SPEED_HIGH,
          pdev_nr * VHCI_PORTS + i, vdev);
  spin_unlock(&vdev->ud.lock);
 }

 for (i = 0; i < VHCI_HC_PORTS; i++) {
  struct vhci_device *vdev = &vhci->vhci_hcd_ss->vdev[i];

  spin_lock(&vdev->ud.lock);
  port_show_vhci(&out, HUB_SPEED_SUPER,
          pdev_nr * VHCI_PORTS + VHCI_HC_PORTS + i, vdev);
  spin_unlock(&vdev->ud.lock);
 }

 spin_unlock_irqrestore(&vhci->lock, flags);

 return out - s;
}
