
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {char* iobuf; int send_ctrl_pipe; int recv_ctrl_pipe; } ;


 int HZ ;
 int USB_STOR_TRANSPORT_GOOD ;
 int msleep (int) ;
 int usb_stor_control_msg (struct us_data*,int ,int,int,int,int,char*,int,int) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int init_freecom(struct us_data *us)
{
 int result;
 char *buffer = us->iobuf;






 result = usb_stor_control_msg(us, us->recv_ctrl_pipe,
   0x4c, 0xc0, 0x4346, 0x0, buffer, 0x20, 3*HZ);
 buffer[32] = '\0';
 usb_stor_dbg(us, "String returned from FC init is: %s\n", buffer);
 result = usb_stor_control_msg(us, us->send_ctrl_pipe,
   0x4d, 0x40, 0x24d8, 0x0, ((void*)0), 0x0, 3*HZ);
 usb_stor_dbg(us, "result from activate reset is %d\n", result);


 msleep(250);


 result = usb_stor_control_msg(us, us->send_ctrl_pipe,
   0x4d, 0x40, 0x24f8, 0x0, ((void*)0), 0x0, 3*HZ);
 usb_stor_dbg(us, "result from clear reset is %d\n", result);


 msleep(3 * 1000);

 return USB_STOR_TRANSPORT_GOOD;
}
