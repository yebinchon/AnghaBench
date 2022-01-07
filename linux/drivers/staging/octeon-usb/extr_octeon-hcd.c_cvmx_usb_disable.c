
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_hcd {int index; } ;


 int CVMX_USBCX_HPRT (int ) ;
 int USB_SET_FIELD32 (int ,int ,int ,int) ;
 int cvmx_usbcx_hprt ;
 int prtena ;

__attribute__((used)) static int cvmx_usb_disable(struct octeon_hcd *usb)
{

 USB_SET_FIELD32(CVMX_USBCX_HPRT(usb->index), cvmx_usbcx_hprt,
   prtena, 1);
 return 0;
}
