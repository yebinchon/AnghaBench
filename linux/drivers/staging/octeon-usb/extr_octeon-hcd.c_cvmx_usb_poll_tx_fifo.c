
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptxfspcavail; } ;
union cvmx_usbcx_hptxsts {TYPE_1__ s; void* u32; } ;
struct TYPE_5__ {int nptxfspcavail; } ;
union cvmx_usbcx_gnptxsts {TYPE_2__ s; void* u32; } ;
struct TYPE_6__ {scalar_t__ head; scalar_t__ tail; } ;
struct octeon_hcd {int index; TYPE_3__ nonperiodic; TYPE_3__ periodic; } ;


 int CVMX_USBCX_GINTMSK (int ) ;
 int CVMX_USBCX_GNPTXSTS (int ) ;
 int CVMX_USBCX_HPTXSTS (int ) ;
 int USB_SET_FIELD32 (int ,int ,int ,int) ;
 scalar_t__ cvmx_usb_fill_tx_hw (struct octeon_hcd*,TYPE_3__*,int ) ;
 void* cvmx_usb_read_csr32 (struct octeon_hcd*,int ) ;
 int cvmx_usbcx_gintmsk ;
 int nptxfempmsk ;
 int ptxfempmsk ;

__attribute__((used)) static void cvmx_usb_poll_tx_fifo(struct octeon_hcd *usb)
{
 if (usb->periodic.head != usb->periodic.tail) {
  union cvmx_usbcx_hptxsts tx_status;

  tx_status.u32 = cvmx_usb_read_csr32(usb,
     CVMX_USBCX_HPTXSTS(usb->index));
  if (cvmx_usb_fill_tx_hw(usb, &usb->periodic,
     tx_status.s.ptxfspcavail))
   USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index),
     cvmx_usbcx_gintmsk, ptxfempmsk, 1);
  else
   USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index),
     cvmx_usbcx_gintmsk, ptxfempmsk, 0);
 }

 if (usb->nonperiodic.head != usb->nonperiodic.tail) {
  union cvmx_usbcx_gnptxsts tx_status;

  tx_status.u32 = cvmx_usb_read_csr32(usb,
     CVMX_USBCX_GNPTXSTS(usb->index));
  if (cvmx_usb_fill_tx_hw(usb, &usb->nonperiodic,
     tx_status.s.nptxfspcavail))
   USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index),
     cvmx_usbcx_gintmsk, nptxfempmsk, 1);
  else
   USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index),
     cvmx_usbcx_gintmsk, nptxfempmsk, 0);
 }
}
