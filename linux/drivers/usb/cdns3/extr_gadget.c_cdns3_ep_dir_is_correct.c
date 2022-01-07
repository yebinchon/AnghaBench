
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_endpoint_descriptor {int dummy; } ;
struct TYPE_3__ {scalar_t__ dir_out; scalar_t__ dir_in; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;
struct cdns3_endpoint {TYPE_2__ endpoint; } ;


 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_dir_out (struct usb_endpoint_descriptor*) ;

__attribute__((used)) static int cdns3_ep_dir_is_correct(struct usb_endpoint_descriptor *desc,
       struct cdns3_endpoint *priv_ep)
{
 return (priv_ep->endpoint.caps.dir_in && usb_endpoint_dir_in(desc)) ||
        (priv_ep->endpoint.caps.dir_out && usb_endpoint_dir_out(desc));
}
