
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pktsts; int bcnt; int chnum; } ;
union cvmx_usbcx_grxstsph {TYPE_1__ s; void* u32; } ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct octeon_hcd {int index; } ;


 int CVMX_SYNCW ;
 int CVMX_USBCX_GRXSTSPH (int ) ;
 scalar_t__ CVMX_USBNX_DMA0_INB_CHN0 (int ) ;
 int USB_FIFO_ADDRESS (int,int ) ;
 int * cvmx_phys_to_ptr (scalar_t__) ;
 scalar_t__ cvmx_read64_uint64 (scalar_t__) ;
 void* cvmx_usb_read_csr32 (struct octeon_hcd*,int ) ;
 int cvmx_write64_uint64 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void cvmx_usb_poll_rx_fifo(struct octeon_hcd *usb)
{
 union cvmx_usbcx_grxstsph rx_status;
 int channel;
 int bytes;
 u64 address;
 u32 *ptr;

 rx_status.u32 = cvmx_usb_read_csr32(usb,
         CVMX_USBCX_GRXSTSPH(usb->index));

 if (rx_status.s.pktsts != 2)
  return;

 if (!rx_status.s.bcnt)
  return;

 channel = rx_status.s.chnum;
 bytes = rx_status.s.bcnt;
 if (!bytes)
  return;


 address = cvmx_read64_uint64(CVMX_USBNX_DMA0_INB_CHN0(usb->index) +
         channel * 8);

 ptr = cvmx_phys_to_ptr(address);
 cvmx_write64_uint64(CVMX_USBNX_DMA0_INB_CHN0(usb->index) + channel * 8,
       address + bytes);


 while (bytes > 0) {
  *ptr++ = cvmx_usb_read_csr32(usb,
     USB_FIFO_ADDRESS(channel, usb->index));
  bytes -= 4;
 }
 CVMX_SYNCW;
}
