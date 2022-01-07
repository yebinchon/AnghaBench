
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int recv_ctrl_pipe; } ;


 unsigned char ALAUDA_GET_SM_MEDIA_STATUS ;
 unsigned char ALAUDA_GET_XD_MEDIA_STATUS ;
 scalar_t__ ALAUDA_PORT_XD ;
 scalar_t__ MEDIA_PORT (struct us_data*) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,unsigned char,int,int ,int,unsigned char*,int) ;
 int usb_stor_dbg (struct us_data*,char*,unsigned char,unsigned char) ;

__attribute__((used)) static int alauda_get_media_status(struct us_data *us, unsigned char *data)
{
 int rc;
 unsigned char command;

 if (MEDIA_PORT(us) == ALAUDA_PORT_XD)
  command = ALAUDA_GET_XD_MEDIA_STATUS;
 else
  command = ALAUDA_GET_SM_MEDIA_STATUS;

 rc = usb_stor_ctrl_transfer(us, us->recv_ctrl_pipe,
  command, 0xc0, 0, 1, data, 2);

 usb_stor_dbg(us, "Media status %02X %02X\n", data[0], data[1]);

 return rc;
}
