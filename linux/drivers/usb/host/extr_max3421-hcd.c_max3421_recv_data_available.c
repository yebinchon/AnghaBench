
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct usb_hcd {int dummy; } ;
struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; void* transfer_buffer; } ;
struct max3421_hcd {size_t curr_len; struct urb* curr_urb; } ;


 int BIT (int ) ;
 size_t MAX3421_FIFO_SIZE ;
 int MAX3421_HI_RCVDAV_BIT ;
 int MAX3421_REG_HIRQ ;
 int MAX3421_REG_RCVBC ;
 int MAX3421_REG_RCVFIFO ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 size_t spi_rd8 (struct usb_hcd*,int ) ;
 int spi_rd_buf (struct usb_hcd*,int ,void*,size_t) ;
 int spi_wr8 (struct usb_hcd*,int ,int ) ;

__attribute__((used)) static void
max3421_recv_data_available(struct usb_hcd *hcd)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 struct urb *urb = max3421_hcd->curr_urb;
 size_t remaining, transfer_size;
 u8 rcvbc;

 rcvbc = spi_rd8(hcd, MAX3421_REG_RCVBC);

 if (rcvbc > MAX3421_FIFO_SIZE)
  rcvbc = MAX3421_FIFO_SIZE;
 if (urb->actual_length >= urb->transfer_buffer_length)
  remaining = 0;
 else
  remaining = urb->transfer_buffer_length - urb->actual_length;
 transfer_size = rcvbc;
 if (transfer_size > remaining)
  transfer_size = remaining;
 if (transfer_size > 0) {
  void *dst = urb->transfer_buffer + urb->actual_length;

  spi_rd_buf(hcd, MAX3421_REG_RCVFIFO, dst, transfer_size);
  urb->actual_length += transfer_size;
  max3421_hcd->curr_len = transfer_size;
 }


 spi_wr8(hcd, MAX3421_REG_HIRQ, BIT(MAX3421_HI_RCVDAV_BIT));
}
