
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct scsi_cmnd {int cmd_len; scalar_t__* cmnd; } ;


 int usb_stor_invoke_transport (struct scsi_cmnd*,struct us_data*) ;

void usb_stor_pad12_command(struct scsi_cmnd *srb, struct us_data *us)
{







 for (; srb->cmd_len < 12; srb->cmd_len++)
  srb->cmnd[srb->cmd_len] = 0;


 usb_stor_invoke_transport(srb, us);
}
