
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_hcd {int dummy; } ;


 int usb_put_hcd (struct usb_hcd*) ;
 struct usb_hcd* usbhsh_hpriv_to_hcd (struct usbhsh_hpriv*) ;
 struct usbhsh_hpriv* usbhsh_priv_to_hpriv (struct usbhs_priv*) ;

int usbhs_mod_host_remove(struct usbhs_priv *priv)
{
 struct usbhsh_hpriv *hpriv = usbhsh_priv_to_hpriv(priv);
 struct usb_hcd *hcd = usbhsh_hpriv_to_hcd(hpriv);

 usb_put_hcd(hcd);

 return 0;
}
