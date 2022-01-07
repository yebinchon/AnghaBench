
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct usb_ss_ep_comp_descriptor {int bmAttributes; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int type_bulk; int type_int; int type_iso; int dir_out; int dir_in; } ;
struct usb_ep {scalar_t__ maxpacket_limit; int max_streams; TYPE_1__ caps; scalar_t__ claimed; } ;
struct usb_endpoint_descriptor {int dummy; } ;






 int gadget_is_dualspeed (struct usb_gadget*) ;
 int gadget_is_superspeed (struct usb_gadget*) ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_dir_out (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_maxp_mult (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_type (struct usb_endpoint_descriptor*) ;

int usb_gadget_ep_match_desc(struct usb_gadget *gadget,
  struct usb_ep *ep, struct usb_endpoint_descriptor *desc,
  struct usb_ss_ep_comp_descriptor *ep_comp)
{
 u8 type;
 u16 max;
 int num_req_streams = 0;


 if (ep->claimed)
  return 0;

 type = usb_endpoint_type(desc);
 max = usb_endpoint_maxp(desc);

 if (usb_endpoint_dir_in(desc) && !ep->caps.dir_in)
  return 0;
 if (usb_endpoint_dir_out(desc) && !ep->caps.dir_out)
  return 0;

 if (max > ep->maxpacket_limit)
  return 0;


 if (!gadget_is_dualspeed(gadget) && usb_endpoint_maxp_mult(desc) > 1)
  return 0;

 switch (type) {
 case 130:

  return 0;
 case 128:
  if (!ep->caps.type_iso)
   return 0;

  if (!gadget_is_dualspeed(gadget) && max > 1023)
   return 0;
  break;
 case 131:
  if (!ep->caps.type_bulk)
   return 0;
  if (ep_comp && gadget_is_superspeed(gadget)) {




   num_req_streams = ep_comp->bmAttributes & 0x1f;
   if (num_req_streams > ep->max_streams)
    return 0;
  }
  break;
 case 129:



  if (!ep->caps.type_int && !ep->caps.type_bulk)
   return 0;

  if (!gadget_is_dualspeed(gadget) && max > 64)
   return 0;
  break;
 }

 return 1;
}
