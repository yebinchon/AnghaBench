
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int DVSTCTR ;
 int UACT ;
 int USBRST ;
 int usbhs_bset (struct usbhs_priv*,int ,int,int) ;

void usbhs_bus_send_reset(struct usbhs_priv *priv)
{
 usbhs_bset(priv, DVSTCTR, (USBRST | UACT), USBRST);
}
