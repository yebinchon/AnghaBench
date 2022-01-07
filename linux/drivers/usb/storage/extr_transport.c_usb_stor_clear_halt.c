
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int pusb_dev; int send_ctrl_pipe; } ;


 int HZ ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_RECIP_ENDPOINT ;
 int USB_REQ_CLEAR_FEATURE ;
 int usb_pipeendpoint (unsigned int) ;
 scalar_t__ usb_pipein (unsigned int) ;
 int usb_reset_endpoint (int ,int) ;
 int usb_stor_control_msg (struct us_data*,int ,int ,int ,int ,int,int *,int ,int) ;
 int usb_stor_dbg (struct us_data*,char*,int) ;

int usb_stor_clear_halt(struct us_data *us, unsigned int pipe)
{
 int result;
 int endp = usb_pipeendpoint(pipe);

 if (usb_pipein (pipe))
  endp |= USB_DIR_IN;

 result = usb_stor_control_msg(us, us->send_ctrl_pipe,
  USB_REQ_CLEAR_FEATURE, USB_RECIP_ENDPOINT,
  USB_ENDPOINT_HALT, endp,
  ((void*)0), 0, 3*HZ);

 if (result >= 0)
  usb_reset_endpoint(us->pusb_dev, endp);

 usb_stor_dbg(us, "result = %d\n", result);
 return result;
}
