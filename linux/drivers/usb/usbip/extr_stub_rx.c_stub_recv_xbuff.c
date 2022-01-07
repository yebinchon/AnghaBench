
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {int dummy; } ;
struct stub_priv {int num_urbs; int * urbs; } ;


 int usbip_recv_xbuff (struct usbip_device*,int ) ;

__attribute__((used)) static int stub_recv_xbuff(struct usbip_device *ud, struct stub_priv *priv)
{
 int ret;
 int i;

 for (i = 0; i < priv->num_urbs; i++) {
  ret = usbip_recv_xbuff(ud, priv->urbs[i]);
  if (ret < 0)
   break;
 }

 return ret;
}
