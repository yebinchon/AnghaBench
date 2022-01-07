
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {unsigned int recv_intr_pipe; TYPE_1__* current_urb; int ep_bInterval; int pusb_dev; } ;
struct TYPE_2__ {int actual_length; } ;


 int interpret_urb_result (struct us_data*,unsigned int,unsigned int,int,int ) ;
 int usb_fill_int_urb (TYPE_1__*,int ,unsigned int,void*,unsigned int,int ,int *,int ) ;
 unsigned int usb_maxpacket (int ,unsigned int,int ) ;
 int usb_pipeout (unsigned int) ;
 int usb_stor_blocking_completion ;
 int usb_stor_dbg (struct us_data*,char*,unsigned int) ;
 int usb_stor_msg_common (struct us_data*,int ) ;

__attribute__((used)) static int usb_stor_intr_transfer(struct us_data *us, void *buf,
      unsigned int length)
{
 int result;
 unsigned int pipe = us->recv_intr_pipe;
 unsigned int maxp;

 usb_stor_dbg(us, "xfer %u bytes\n", length);


 maxp = usb_maxpacket(us->pusb_dev, pipe, usb_pipeout(pipe));
 if (maxp > length)
  maxp = length;


 usb_fill_int_urb(us->current_urb, us->pusb_dev, pipe, buf,
   maxp, usb_stor_blocking_completion, ((void*)0),
   us->ep_bInterval);
 result = usb_stor_msg_common(us, 0);

 return interpret_urb_result(us, pipe, length, result,
   us->current_urb->actual_length);
}
