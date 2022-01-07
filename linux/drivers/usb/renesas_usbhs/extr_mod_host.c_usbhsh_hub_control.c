
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct device {int dummy; } ;




 int EPIPE ;





 int __usbhsh_hub_get_status (struct usbhsh_hpriv*,int ,int ,int ,char*,int ) ;
 int __usbhsh_hub_hub_feature (struct usbhsh_hpriv*,int ,int ,int ,char*,int ) ;
 int __usbhsh_hub_port_feature (struct usbhsh_hpriv*,int ,int ,int ,char*,int ) ;
 int dev_dbg (struct device*,char*,int ,int,int ) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 struct usbhsh_hpriv* usbhsh_hcd_to_hpriv (struct usb_hcd*) ;
 struct usbhs_priv* usbhsh_hpriv_to_priv (struct usbhsh_hpriv*) ;
 int usbhsh_port_stat_get (struct usbhsh_hpriv*) ;

__attribute__((used)) static int usbhsh_hub_control(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
         u16 wIndex, char *buf, u16 wLength)
{
 struct usbhsh_hpriv *hpriv = usbhsh_hcd_to_hpriv(hcd);
 struct usbhs_priv *priv = usbhsh_hpriv_to_priv(hpriv);
 struct device *dev = usbhs_priv_to_dev(priv);
 int ret = -EPIPE;

 switch (typeReq) {


 case 134:
 case 129:
  ret = __usbhsh_hub_hub_feature(hpriv, typeReq,
            wValue, wIndex, buf, wLength);
  break;


 case 128:
 case 133:
  ret = __usbhsh_hub_port_feature(hpriv, typeReq,
      wValue, wIndex, buf, wLength);
  break;


 case 131:
 case 130:
 case 132:
  ret = __usbhsh_hub_get_status(hpriv, typeReq,
           wValue, wIndex, buf, wLength);
  break;
 }

 dev_dbg(dev, "typeReq = %x, ret = %d, port_stat = %x\n",
  typeReq, ret, usbhsh_port_stat_get(hpriv));

 return ret;
}
