
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; void* wLength; void* wIndex; void* wValue; } ;


 int USBINDX ;
 int USBLENG ;
 int USBREQ ;
 int USBVAL ;
 void* cpu_to_le16 (int) ;
 int usbhs_read (struct usbhs_priv*,int ) ;

void usbhs_usbreq_get_val(struct usbhs_priv *priv, struct usb_ctrlrequest *req)
{
 u16 val;

 val = usbhs_read(priv, USBREQ);
 req->bRequest = (val >> 8) & 0xFF;
 req->bRequestType = (val >> 0) & 0xFF;

 req->wValue = cpu_to_le16(usbhs_read(priv, USBVAL));
 req->wIndex = cpu_to_le16(usbhs_read(priv, USBINDX));
 req->wLength = cpu_to_le16(usbhs_read(priv, USBLENG));
}
