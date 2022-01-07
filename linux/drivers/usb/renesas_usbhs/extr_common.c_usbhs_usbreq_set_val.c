
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wLength; int wIndex; int wValue; } ;


 int DCPCTR ;
 int SUREQ ;
 int USBINDX ;
 int USBLENG ;
 int USBREQ ;
 int USBVAL ;
 int le16_to_cpu (int ) ;
 int usbhs_bset (struct usbhs_priv*,int ,int ,int ) ;
 int usbhs_write (struct usbhs_priv*,int ,int) ;

void usbhs_usbreq_set_val(struct usbhs_priv *priv, struct usb_ctrlrequest *req)
{
 usbhs_write(priv, USBREQ, (req->bRequest << 8) | req->bRequestType);
 usbhs_write(priv, USBVAL, le16_to_cpu(req->wValue));
 usbhs_write(priv, USBINDX, le16_to_cpu(req->wIndex));
 usbhs_write(priv, USBLENG, le16_to_cpu(req->wLength));

 usbhs_bset(priv, DCPCTR, SUREQ, SUREQ);
}
