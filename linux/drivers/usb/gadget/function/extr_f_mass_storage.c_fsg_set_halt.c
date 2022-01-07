
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {char* name; } ;
struct fsg_dev {struct usb_ep* bulk_out; struct usb_ep* bulk_in; } ;


 int DBG (struct fsg_dev*,char*,char const*) ;
 int usb_ep_set_halt (struct usb_ep*) ;

__attribute__((used)) static int fsg_set_halt(struct fsg_dev *fsg, struct usb_ep *ep)
{
 const char *name;

 if (ep == fsg->bulk_in)
  name = "bulk-in";
 else if (ep == fsg->bulk_out)
  name = "bulk-out";
 else
  name = ep->name;
 DBG(fsg, "%s set halt\n", name);
 return usb_ep_set_halt(ep);
}
