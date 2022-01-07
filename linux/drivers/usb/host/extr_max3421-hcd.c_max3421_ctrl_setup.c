
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int setup_packet; } ;


 int MAX3421_HXFR_SETUP ;
 int MAX3421_REG_SUDFIFO ;
 int spi_wr_buf (struct usb_hcd*,int ,int ,int) ;

__attribute__((used)) static int
max3421_ctrl_setup(struct usb_hcd *hcd, struct urb *urb)
{
 spi_wr_buf(hcd, MAX3421_REG_SUDFIFO, urb->setup_packet, 8);
 return MAX3421_HXFR_SETUP;
}
