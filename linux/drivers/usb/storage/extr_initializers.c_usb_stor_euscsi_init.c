
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int send_ctrl_pipe; } ;


 int HZ ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_stor_control_msg (struct us_data*,int ,int,int,int,int,int *,int,int) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

int usb_stor_euscsi_init(struct us_data *us)
{
 int result;

 usb_stor_dbg(us, "Attempting to init eUSCSI bridge...\n");
 result = usb_stor_control_msg(us, us->send_ctrl_pipe,
   0x0C, USB_RECIP_INTERFACE | USB_TYPE_VENDOR,
   0x01, 0x0, ((void*)0), 0x0, 5 * HZ);
 usb_stor_dbg(us, "-- result is %d\n", result);

 return 0;
}
