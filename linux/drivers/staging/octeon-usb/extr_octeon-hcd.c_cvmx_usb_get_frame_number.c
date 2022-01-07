
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frnum; } ;
union cvmx_usbcx_hfnum {TYPE_1__ s; int u32; } ;
struct octeon_hcd {int index; } ;


 int CVMX_USBCX_HFNUM (int ) ;
 int cvmx_usb_read_csr32 (struct octeon_hcd*,int ) ;

__attribute__((used)) static int cvmx_usb_get_frame_number(struct octeon_hcd *usb)
{
 union cvmx_usbcx_hfnum usbc_hfnum;

 usbc_hfnum.u32 = cvmx_usb_read_csr32(usb, CVMX_USBCX_HFNUM(usb->index));

 return usbc_hfnum.s.frnum;
}
