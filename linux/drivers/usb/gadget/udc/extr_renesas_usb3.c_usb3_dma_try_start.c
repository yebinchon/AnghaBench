
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int dummy; } ;
struct renesas_usb3 {int dummy; } ;


 int usb3_dma_fill_prd (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 scalar_t__ usb3_dma_get_setting_area (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 int usb3_dma_kick_prd (struct renesas_usb3_ep*) ;
 int usb3_enable_dma_pipen (struct renesas_usb3*) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_pn_start (struct renesas_usb3*) ;
 int usb3_pn_stop (struct renesas_usb3*) ;
 int use_dma ;

__attribute__((used)) static bool usb3_dma_try_start(struct renesas_usb3_ep *usb3_ep,
          struct renesas_usb3_request *usb3_req)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);

 if (!use_dma)
  return 0;

 if (usb3_dma_get_setting_area(usb3_ep, usb3_req)) {
  usb3_pn_stop(usb3);
  usb3_enable_dma_pipen(usb3);
  usb3_dma_fill_prd(usb3_ep, usb3_req);
  usb3_dma_kick_prd(usb3_ep);
  usb3_pn_start(usb3);
  return 1;
 }

 return 0;
}
