
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int USBHSG_STATUS_STARTED ;
 int usbhsg_try_start (struct usbhs_priv*,int ) ;

__attribute__((used)) static int usbhsg_start(struct usbhs_priv *priv)
{
 return usbhsg_try_start(priv, USBHSG_STATUS_STARTED);
}
