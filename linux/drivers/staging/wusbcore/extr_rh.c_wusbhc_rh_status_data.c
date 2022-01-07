
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {int ports_max; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {scalar_t__ change; } ;


 size_t DIV_ROUND_UP (int,int) ;
 int memset (char*,int ,size_t) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;
 TYPE_1__* wusb_port_by_idx (struct wusbhc*,size_t) ;

int wusbhc_rh_status_data(struct usb_hcd *usb_hcd, char *_buf)
{
 struct wusbhc *wusbhc = usb_hcd_to_wusbhc(usb_hcd);
 size_t cnt, size, bits_set = 0;



 size = DIV_ROUND_UP(wusbhc->ports_max + 1, 8);


 memset(_buf, 0, size);

 for (cnt = 0; cnt < wusbhc->ports_max; cnt++) {

  if (wusb_port_by_idx(wusbhc, cnt)->change) {
   const int bitpos = cnt+1;

   _buf[bitpos/8] |= (1 << (bitpos % 8));
   bits_set++;
  }
 }

 return bits_set ? size : 0;
}
