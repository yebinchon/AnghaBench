
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int send_ctrl_pipe; } ;


 unsigned char ALAUDA_ACK_SM_MEDIA_CHANGE ;
 unsigned char ALAUDA_ACK_XD_MEDIA_CHANGE ;
 scalar_t__ ALAUDA_PORT_XD ;
 scalar_t__ MEDIA_PORT (struct us_data*) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,unsigned char,int,int ,int,int *,int ) ;

__attribute__((used)) static int alauda_ack_media(struct us_data *us)
{
 unsigned char command;

 if (MEDIA_PORT(us) == ALAUDA_PORT_XD)
  command = ALAUDA_ACK_XD_MEDIA_CHANGE;
 else
  command = ALAUDA_ACK_SM_MEDIA_CHANGE;

 return usb_stor_ctrl_transfer(us, us->send_ctrl_pipe,
  command, 0x40, 0, 1, ((void*)0), 0);
}
