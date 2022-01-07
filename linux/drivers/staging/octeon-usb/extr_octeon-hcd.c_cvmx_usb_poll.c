
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ prtena; } ;
union cvmx_usbcx_hprt {void* u32; TYPE_2__ s; } ;
struct TYPE_4__ {int frnum; } ;
union cvmx_usbcx_hfnum {TYPE_1__ s; void* u32; } ;
union cvmx_usbcx_haint {int u32; } ;
struct TYPE_6__ {int sof; scalar_t__ hchint; scalar_t__ prtint; scalar_t__ disconnint; scalar_t__ nptxfemp; scalar_t__ ptxfemp; scalar_t__ rxflvl; } ;
union cvmx_usbcx_gintsts {TYPE_3__ s; void* u32; } ;
struct octeon_hcd {int frame_number; int init_flags; int index; } ;


 int CVMX_USBCX_GINTSTS (int ) ;
 int CVMX_USBCX_HAINT (int ) ;
 int CVMX_USBCX_HFNUM (int ) ;
 int CVMX_USBCX_HPRT (int ) ;
 int CVMX_USB_INITIALIZE_FLAGS_NO_DMA ;
 int __fls (int) ;
 int cvmx_usb_poll_channel (struct octeon_hcd*,int) ;
 int cvmx_usb_poll_rx_fifo (struct octeon_hcd*) ;
 int cvmx_usb_poll_tx_fifo (struct octeon_hcd*) ;
 void* cvmx_usb_read_csr32 (struct octeon_hcd*,int ) ;
 int cvmx_usb_schedule (struct octeon_hcd*,int ) ;
 int cvmx_usb_write_csr32 (struct octeon_hcd*,int ,void*) ;
 int octeon_usb_port_callback (struct octeon_hcd*) ;
 int prefetch_range (struct octeon_hcd*,int) ;

__attribute__((used)) static int cvmx_usb_poll(struct octeon_hcd *usb)
{
 union cvmx_usbcx_hfnum usbc_hfnum;
 union cvmx_usbcx_gintsts usbc_gintsts;

 prefetch_range(usb, sizeof(*usb));


 usbc_hfnum.u32 = cvmx_usb_read_csr32(usb, CVMX_USBCX_HFNUM(usb->index));
 if ((usb->frame_number & 0x3fff) > usbc_hfnum.s.frnum)
  usb->frame_number += 0x4000;
 usb->frame_number &= ~0x3fffull;
 usb->frame_number |= usbc_hfnum.s.frnum;


 usbc_gintsts.u32 = cvmx_usb_read_csr32(usb,
            CVMX_USBCX_GINTSTS(usb->index));


 cvmx_usb_write_csr32(usb, CVMX_USBCX_GINTSTS(usb->index),
        usbc_gintsts.u32);

 if (usbc_gintsts.s.rxflvl) {







  if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
   cvmx_usb_poll_rx_fifo(usb);
 }
 if (usbc_gintsts.s.ptxfemp || usbc_gintsts.s.nptxfemp) {

  if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
   cvmx_usb_poll_tx_fifo(usb);
 }
 if (usbc_gintsts.s.disconnint || usbc_gintsts.s.prtint) {
  union cvmx_usbcx_hprt usbc_hprt;
  octeon_usb_port_callback(usb);

  usbc_hprt.u32 =
   cvmx_usb_read_csr32(usb, CVMX_USBCX_HPRT(usb->index));
  usbc_hprt.s.prtena = 0;
  cvmx_usb_write_csr32(usb, CVMX_USBCX_HPRT(usb->index),
         usbc_hprt.u32);
 }
 if (usbc_gintsts.s.hchint) {
  union cvmx_usbcx_haint usbc_haint;

  usbc_haint.u32 = cvmx_usb_read_csr32(usb,
     CVMX_USBCX_HAINT(usb->index));
  while (usbc_haint.u32) {
   int channel;

   channel = __fls(usbc_haint.u32);
   cvmx_usb_poll_channel(usb, channel);
   usbc_haint.u32 ^= 1 << channel;
  }
 }

 cvmx_usb_schedule(usb, usbc_gintsts.s.sof);

 return 0;
}
