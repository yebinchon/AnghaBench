
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int* iobuf; int ifnum; int recv_ctrl_pipe; } ;


 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int US_BULK_GET_MAX_LUN ;
 int usb_stor_control_msg (struct us_data*,int ,int ,int,int ,int ,int*,int,int) ;
 int usb_stor_dbg (struct us_data*,char*,int,int) ;

__attribute__((used)) static int rts51x_get_max_lun(struct us_data *us)
{
 int result;


 us->iobuf[0] = 0;
 result = usb_stor_control_msg(us, us->recv_ctrl_pipe,
          US_BULK_GET_MAX_LUN,
          USB_DIR_IN | USB_TYPE_CLASS |
          USB_RECIP_INTERFACE,
          0, us->ifnum, us->iobuf, 1, 10 * HZ);

 usb_stor_dbg(us, "GetMaxLUN command result is %d, data is %d\n",
       result, us->iobuf[0]);


 if (result > 0)
  return us->iobuf[0];

 return 0;
}
