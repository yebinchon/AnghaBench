
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct s3c_hsudc_ep {int wedge; } ;


 int EINVAL ;
 struct s3c_hsudc_ep* our_ep (struct usb_ep*) ;
 int usb_ep_set_halt (struct usb_ep*) ;

__attribute__((used)) static int s3c_hsudc_set_wedge(struct usb_ep *_ep)
{
 struct s3c_hsudc_ep *hsep = our_ep(_ep);

 if (!hsep)
  return -EINVAL;

 hsep->wedge = 1;
 return usb_ep_set_halt(_ep);
}
