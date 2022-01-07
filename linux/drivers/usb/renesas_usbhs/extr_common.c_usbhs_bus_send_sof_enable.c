
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;
struct device {int dummy; } ;


 int DVSTCTR ;
 int UACT ;
 int USBRST ;
 int dev_err (struct device*,char*) ;
 int usbhs_bset (struct usbhs_priv*,int ,int,int) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usbhs_read (struct usbhs_priv*,int ) ;

void usbhs_bus_send_sof_enable(struct usbhs_priv *priv)
{
 u16 status = usbhs_read(priv, DVSTCTR) & (USBRST | UACT);

 if (status != USBRST) {
  struct device *dev = usbhs_priv_to_dev(priv);
  dev_err(dev, "usbhs should be reset\n");
 }

 usbhs_bset(priv, DVSTCTR, (USBRST | UACT), UACT);
}
