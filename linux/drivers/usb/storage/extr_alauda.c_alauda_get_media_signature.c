
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int recv_ctrl_pipe; } ;


 unsigned char ALAUDA_GET_SM_MEDIA_SIG ;
 unsigned char ALAUDA_GET_XD_MEDIA_SIG ;
 scalar_t__ ALAUDA_PORT_XD ;
 scalar_t__ MEDIA_PORT (struct us_data*) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,unsigned char,int,int ,int ,unsigned char*,int) ;

__attribute__((used)) static int alauda_get_media_signature(struct us_data *us, unsigned char *data)
{
 unsigned char command;

 if (MEDIA_PORT(us) == ALAUDA_PORT_XD)
  command = ALAUDA_GET_XD_MEDIA_SIG;
 else
  command = ALAUDA_GET_SM_MEDIA_SIG;

 return usb_stor_ctrl_transfer(us, us->recv_ctrl_pipe,
  command, 0xc0, 0, 0, data, 4);
}
