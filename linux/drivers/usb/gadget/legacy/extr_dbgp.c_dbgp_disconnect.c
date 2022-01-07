
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int serial; } ;


 TYPE_1__ dbgp ;
 int dbgp_disable_ep () ;
 int gserial_disconnect (int ) ;

__attribute__((used)) static void dbgp_disconnect(struct usb_gadget *gadget)
{



 gserial_disconnect(dbgp.serial);

}
