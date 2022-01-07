
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_otg {int state; struct usb_bus* host; } ;
struct usb_bus {int dummy; } ;


 int OTG_STATE_UNDEFINED ;

__attribute__((used)) static int dm816x_usb_phy_set_host(struct usb_otg *otg, struct usb_bus *host)
{
 otg->host = host;
 if (!host)
  otg->state = OTG_STATE_UNDEFINED;

 return 0;
}
