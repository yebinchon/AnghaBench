
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_hpriv {int dummy; } ;
struct usbhsh_ep {int dummy; } ;
struct usbhsh_device {int dummy; } ;
struct usb_host_endpoint {int dummy; } ;
struct usb_hcd {int dummy; } ;


 int usbhsh_device_detach (struct usbhsh_hpriv*,struct usbhsh_device*) ;
 int usbhsh_device_has_endpoint (struct usbhsh_device*) ;
 int usbhsh_endpoint_detach (struct usbhsh_hpriv*,struct usb_host_endpoint*) ;
 struct usbhsh_ep* usbhsh_ep_to_uep (struct usb_host_endpoint*) ;
 struct usbhsh_hpriv* usbhsh_hcd_to_hpriv (struct usb_hcd*) ;
 struct usbhsh_device* usbhsh_uep_to_udev (struct usbhsh_ep*) ;

__attribute__((used)) static void usbhsh_endpoint_disable(struct usb_hcd *hcd,
        struct usb_host_endpoint *ep)
{
 struct usbhsh_ep *uep = usbhsh_ep_to_uep(ep);
 struct usbhsh_device *udev;
 struct usbhsh_hpriv *hpriv;





 if (!uep)
  return;

 udev = usbhsh_uep_to_udev(uep);
 hpriv = usbhsh_hcd_to_hpriv(hcd);

 usbhsh_endpoint_detach(hpriv, ep);





 if (!usbhsh_device_has_endpoint(udev))
  usbhsh_device_detach(hpriv, udev);
}
