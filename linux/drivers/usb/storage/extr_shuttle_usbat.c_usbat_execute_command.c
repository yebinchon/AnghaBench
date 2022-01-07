
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int send_ctrl_pipe; } ;


 int USBAT_CMD_EXEC_CMD ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,int ,int,int ,int ,unsigned char*,unsigned int) ;

__attribute__((used)) static int usbat_execute_command(struct us_data *us,
         unsigned char *commands,
         unsigned int len)
{
 return usb_stor_ctrl_transfer(us, us->send_ctrl_pipe,
          USBAT_CMD_EXEC_CMD, 0x40, 0, 0,
          commands, len);
}
