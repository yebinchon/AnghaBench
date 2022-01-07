
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int send_ctrl_pipe; } ;


 int HZ ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_SET_FEATURE ;
 int USB_TYPE_STANDARD ;
 int usb_stor_control_msg (struct us_data*,int ,int ,int,int,int,int *,int,int) ;
 int usb_stor_dbg (struct us_data*,char*,int) ;

int usb_stor_huawei_e220_init(struct us_data *us)
{
 int result;

 result = usb_stor_control_msg(us, us->send_ctrl_pipe,
          USB_REQ_SET_FEATURE,
          USB_TYPE_STANDARD | USB_RECIP_DEVICE,
          0x01, 0x0, ((void*)0), 0x0, 1 * HZ);
 usb_stor_dbg(us, "Huawei mode set result is %d\n", result);
 return 0;
}
