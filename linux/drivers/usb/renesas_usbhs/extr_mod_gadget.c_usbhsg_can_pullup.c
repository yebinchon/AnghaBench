
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_gpriv {scalar_t__ driver; } ;
struct usbhs_priv {int dummy; } ;


 int USBHSG_STATUS_SOFT_CONNECT ;
 struct usbhsg_gpriv* usbhsg_priv_to_gpriv (struct usbhs_priv*) ;
 scalar_t__ usbhsg_status_has (struct usbhsg_gpriv*,int ) ;

__attribute__((used)) static int usbhsg_can_pullup(struct usbhs_priv *priv)
{
 struct usbhsg_gpriv *gpriv = usbhsg_priv_to_gpriv(priv);

 return gpriv->driver &&
        usbhsg_status_has(gpriv, USBHSG_STATUS_SOFT_CONNECT);
}
