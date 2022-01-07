
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {struct uea_softc* driver_data; } ;
struct usb_interface {int dummy; } ;
struct uea_softc {int sync_q; } ;


 int IS_OPERATIONAL (struct uea_softc*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int uea_heavy(struct usbatm_data *usbatm, struct usb_interface *intf)
{
 struct uea_softc *sc = usbatm->driver_data;

 wait_event_interruptible(sc->sync_q, IS_OPERATIONAL(sc));

 return 0;

}
