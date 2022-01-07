
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_hpriv {int dummy; } ;
struct usb_hcd {int dummy; } ;


 struct usbhsh_hpriv* usbhsh_hcd_to_hpriv (struct usb_hcd*) ;
 int usbhsh_port_stat_get (struct usbhsh_hpriv*) ;

__attribute__((used)) static int usbhsh_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct usbhsh_hpriv *hpriv = usbhsh_hcd_to_hpriv(hcd);
 int roothub_id = 1;





 if (usbhsh_port_stat_get(hpriv) & 0xFFFF0000)
  *buf = (1 << roothub_id);
 else
  *buf = 0;

 return !!(*buf);
}
