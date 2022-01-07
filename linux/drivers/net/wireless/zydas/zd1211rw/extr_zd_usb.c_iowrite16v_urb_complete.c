
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {scalar_t__ cmd_error; } ;
struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; scalar_t__ status; struct zd_usb* context; } ;


 scalar_t__ EIO ;

__attribute__((used)) static void iowrite16v_urb_complete(struct urb *urb)
{
 struct zd_usb *usb = urb->context;

 if (urb->status && !usb->cmd_error)
  usb->cmd_error = urb->status;

 if (!usb->cmd_error &&
   urb->actual_length != urb->transfer_buffer_length)
  usb->cmd_error = -EIO;
}
