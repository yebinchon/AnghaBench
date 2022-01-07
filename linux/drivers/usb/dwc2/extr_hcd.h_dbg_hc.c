
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_host_chan {scalar_t__ ep_type; } ;


 scalar_t__ USB_ENDPOINT_XFER_BULK ;
 scalar_t__ USB_ENDPOINT_XFER_CONTROL ;

__attribute__((used)) static inline bool dbg_hc(struct dwc2_host_chan *hc)
{
 return hc->ep_type == USB_ENDPOINT_XFER_BULK ||
        hc->ep_type == USB_ENDPOINT_XFER_CONTROL;
}
