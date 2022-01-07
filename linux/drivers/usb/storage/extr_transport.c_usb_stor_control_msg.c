
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct us_data {TYPE_2__* current_urb; TYPE_1__* cr; int pusb_dev; } ;
struct TYPE_4__ {int actual_length; } ;
struct TYPE_3__ {void* wLength; void* wIndex; void* wValue; void* bRequest; void* bRequestType; } ;


 void* cpu_to_le16 (int ) ;
 int usb_fill_control_urb (TYPE_2__*,int ,unsigned int,unsigned char*,void*,int ,int ,int *) ;
 int usb_stor_blocking_completion ;
 int usb_stor_dbg (struct us_data*,char*,void*,void*,int ,int ,int ) ;
 int usb_stor_msg_common (struct us_data*,int) ;

int usb_stor_control_msg(struct us_data *us, unsigned int pipe,
   u8 request, u8 requesttype, u16 value, u16 index,
   void *data, u16 size, int timeout)
{
 int status;

 usb_stor_dbg(us, "rq=%02x rqtype=%02x value=%04x index=%02x len=%u\n",
       request, requesttype, value, index, size);


 us->cr->bRequestType = requesttype;
 us->cr->bRequest = request;
 us->cr->wValue = cpu_to_le16(value);
 us->cr->wIndex = cpu_to_le16(index);
 us->cr->wLength = cpu_to_le16(size);


 usb_fill_control_urb(us->current_urb, us->pusb_dev, pipe,
    (unsigned char*) us->cr, data, size,
    usb_stor_blocking_completion, ((void*)0));
 status = usb_stor_msg_common(us, timeout);


 if (status == 0)
  status = us->current_urb->actual_length;
 return status;
}
