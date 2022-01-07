
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhsg_gpriv {int gadget; TYPE_1__* driver; } ;
struct usbhs_priv {int dummy; } ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 int USBHSG_STATUS_STARTED ;
 int stub1 (int *) ;
 struct usbhsg_gpriv* usbhsg_priv_to_gpriv (struct usbhs_priv*) ;
 int usbhsg_try_stop (struct usbhs_priv*,int ) ;

__attribute__((used)) static int usbhsg_stop(struct usbhs_priv *priv)
{
 struct usbhsg_gpriv *gpriv = usbhsg_priv_to_gpriv(priv);


 if (gpriv->driver &&
     gpriv->driver->disconnect)
  gpriv->driver->disconnect(&gpriv->gadget);

 return usbhsg_try_stop(priv, USBHSG_STATUS_STARTED);
}
