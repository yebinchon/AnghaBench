
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char u8 ;
struct usb_ftdi {int command_next; int command_head; TYPE_1__* udev; int bulk_out_endpointAddr; } ;
struct urb {int transfer_dma; int transfer_flags; } ;
typedef int diag ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_err (int *,char*,int,...) ;
 int fill_buffer_with_all_queued_commands (struct usb_ftdi*,char*,int,int) ;
 int ftdi_elan_kick_respond_queue (struct usb_ftdi*) ;
 int ftdi_elan_total_command_size (struct usb_ftdi*,int) ;
 int ftdi_elan_write_bulk_callback ;
 int sprintf (char*,char*,...) ;
 char* usb_alloc_coherent (TYPE_1__*,int,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_1__*,int ,char*,int,int ,struct usb_ftdi*) ;
 int usb_free_coherent (TYPE_1__*,int,char*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (TYPE_1__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int ftdi_elan_command_engine(struct usb_ftdi *ftdi)
{
 int retval;
 char *buf;
 int ed_commands;
 int total_size;
 struct urb *urb;
 int command_size = ftdi->command_next - ftdi->command_head;
 if (command_size == 0)
  return 0;
 total_size = ftdi_elan_total_command_size(ftdi, command_size);
 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return -ENOMEM;
 buf = usb_alloc_coherent(ftdi->udev, total_size, GFP_KERNEL,
     &urb->transfer_dma);
 if (!buf) {
  dev_err(&ftdi->udev->dev, "could not get a buffer to write %d commands totaling %d bytes to the Uxxx\n",
   command_size, total_size);
  usb_free_urb(urb);
  return -ENOMEM;
 }
 ed_commands = fill_buffer_with_all_queued_commands(ftdi, buf,
          command_size, total_size);
 usb_fill_bulk_urb(urb, ftdi->udev, usb_sndbulkpipe(ftdi->udev,
          ftdi->bulk_out_endpointAddr), buf, total_size,
     ftdi_elan_write_bulk_callback, ftdi);
 urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 if (ed_commands) {
  char diag[40 *3 + 4];
  char *d = diag;
  int m = total_size;
  u8 *c = buf;
  int s = (sizeof(diag) - 1) / 3;
  diag[0] = 0;
  while (s-- > 0 && m-- > 0) {
   if (s > 0 || m == 0) {
    d += sprintf(d, " %02X", *c++);
   } else
    d += sprintf(d, " ..");
  }
 }
 retval = usb_submit_urb(urb, GFP_KERNEL);
 if (retval) {
  dev_err(&ftdi->udev->dev, "failed %d to submit urb %p to write %d commands totaling %d bytes to the Uxxx\n",
   retval, urb, command_size, total_size);
  usb_free_coherent(ftdi->udev, total_size, buf, urb->transfer_dma);
  usb_free_urb(urb);
  return retval;
 }
 usb_free_urb(urb);

 ftdi->command_head += command_size;
 ftdi_elan_kick_respond_queue(ftdi);
 return 0;
}
