
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct scsi_cmnd {int cmd_len; int* cmnd; } ;





 int usb_stor_invoke_transport (struct scsi_cmnd*,struct us_data*) ;

void usb_stor_ufi_command(struct scsi_cmnd *srb, struct us_data *us)
{
 for (; srb->cmd_len < 12; srb->cmd_len++)
  srb->cmnd[srb->cmd_len] = 0;


 srb->cmd_len = 12;




 switch (srb->cmnd[0]) {


 case 130:
  srb->cmnd[4] = 36;
  break;


 case 129:
  srb->cmnd[7] = 0;
  srb->cmnd[8] = 8;
  break;


 case 128:
  srb->cmnd[4] = 18;
  break;
 }


 usb_stor_invoke_transport(srb, us);
}
