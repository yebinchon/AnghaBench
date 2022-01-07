
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;


 int DVSTCTR ;
 int RHST ;



 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_LOW ;
 int USB_SPEED_UNKNOWN ;
 int usbhs_read (struct usbhs_priv*,int ) ;

int usbhs_bus_get_speed(struct usbhs_priv *priv)
{
 u16 dvstctr = usbhs_read(priv, DVSTCTR);

 switch (RHST & dvstctr) {
 case 128:
  return USB_SPEED_LOW;
 case 130:
  return USB_SPEED_FULL;
 case 129:
  return USB_SPEED_HIGH;
 }

 return USB_SPEED_UNKNOWN;
}
