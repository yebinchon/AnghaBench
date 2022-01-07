
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {TYPE_1__* current_urb; int pusb_dev; } ;
struct TYPE_2__ {unsigned int actual_length; } ;


 int interpret_urb_result (struct us_data*,unsigned int,unsigned int,int,unsigned int) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,unsigned int,void*,unsigned int,int ,int *) ;
 int usb_stor_blocking_completion ;
 int usb_stor_dbg (struct us_data*,char*,unsigned int) ;
 int usb_stor_msg_common (struct us_data*,int ) ;

int usb_stor_bulk_transfer_buf(struct us_data *us, unsigned int pipe,
 void *buf, unsigned int length, unsigned int *act_len)
{
 int result;

 usb_stor_dbg(us, "xfer %u bytes\n", length);


 usb_fill_bulk_urb(us->current_urb, us->pusb_dev, pipe, buf, length,
        usb_stor_blocking_completion, ((void*)0));
 result = usb_stor_msg_common(us, 0);


 if (act_len)
  *act_len = us->current_urb->actual_length;
 return interpret_urb_result(us, pipe, length, result,
   us->current_urb->actual_length);
}
