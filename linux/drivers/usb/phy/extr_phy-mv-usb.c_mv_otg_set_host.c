
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_otg {struct usb_bus* host; } ;
struct usb_bus {int dummy; } ;



__attribute__((used)) static int mv_otg_set_host(struct usb_otg *otg,
      struct usb_bus *host)
{
 otg->host = host;

 return 0;
}
