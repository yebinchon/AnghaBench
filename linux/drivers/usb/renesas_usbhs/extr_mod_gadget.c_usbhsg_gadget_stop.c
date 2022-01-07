
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhsg_gpriv {int * driver; TYPE_1__* transceiver; } ;
struct usbhs_priv {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int otg; } ;


 int IS_ERR_OR_NULL (TYPE_1__*) ;
 int USBHSG_STATUS_REGISTERD ;
 int otg_set_peripheral (int ,int *) ;
 struct usbhsg_gpriv* usbhsg_gadget_to_gpriv (struct usb_gadget*) ;
 struct usbhs_priv* usbhsg_gpriv_to_priv (struct usbhsg_gpriv*) ;
 int usbhsg_try_stop (struct usbhs_priv*,int ) ;

__attribute__((used)) static int usbhsg_gadget_stop(struct usb_gadget *gadget)
{
 struct usbhsg_gpriv *gpriv = usbhsg_gadget_to_gpriv(gadget);
 struct usbhs_priv *priv = usbhsg_gpriv_to_priv(gpriv);

 usbhsg_try_stop(priv, USBHSG_STATUS_REGISTERD);

 if (!IS_ERR_OR_NULL(gpriv->transceiver))
  otg_set_peripheral(gpriv->transceiver->otg, ((void*)0));

 gpriv->driver = ((void*)0);

 return 0;
}
