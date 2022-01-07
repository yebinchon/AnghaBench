
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int DVSTCTR ;
 int usbhs_vbus_ctrl (struct usbhs_priv*,int ) ;
 int usbhs_write (struct usbhs_priv*,int ,int ) ;

__attribute__((used)) static void usbhsc_bus_init(struct usbhs_priv *priv)
{
 usbhs_write(priv, DVSTCTR, 0);

 usbhs_vbus_ctrl(priv, 0);
}
