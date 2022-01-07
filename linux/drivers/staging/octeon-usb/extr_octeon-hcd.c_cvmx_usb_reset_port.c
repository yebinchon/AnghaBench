
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* u32; } ;
struct octeon_hcd {int index; TYPE_1__ usbcx_hprt; } ;


 int CVMX_USBCX_HPRT (int ) ;
 int USB_SET_FIELD32 (int ,int ,int ,int) ;
 void* cvmx_usb_read_csr32 (struct octeon_hcd*,int ) ;
 int cvmx_usbcx_hprt ;
 int mdelay (int) ;
 int prtrst ;

__attribute__((used)) static void cvmx_usb_reset_port(struct octeon_hcd *usb)
{
 usb->usbcx_hprt.u32 = cvmx_usb_read_csr32(usb,
        CVMX_USBCX_HPRT(usb->index));


 USB_SET_FIELD32(CVMX_USBCX_HPRT(usb->index), cvmx_usbcx_hprt,
   prtrst, 1);





 mdelay(50);


 USB_SET_FIELD32(CVMX_USBCX_HPRT(usb->index), cvmx_usbcx_hprt,
   prtrst, 0);





 usb->usbcx_hprt.u32 = cvmx_usb_read_csr32(usb,
        CVMX_USBCX_HPRT(usb->index));
}
