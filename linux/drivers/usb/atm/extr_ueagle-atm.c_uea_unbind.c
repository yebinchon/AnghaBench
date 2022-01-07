
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {struct uea_softc* driver_data; } ;
struct usb_interface {int dummy; } ;
struct uea_softc {int dummy; } ;


 int kfree (struct uea_softc*) ;
 int uea_stop (struct uea_softc*) ;

__attribute__((used)) static void uea_unbind(struct usbatm_data *usbatm, struct usb_interface *intf)
{
 struct uea_softc *sc = usbatm->driver_data;

 uea_stop(sc);
 kfree(sc);
}
