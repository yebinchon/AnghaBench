
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct scsi_cmnd {int dummy; } ;


 int usb_stor_invoke_transport (struct scsi_cmnd*,struct us_data*) ;

void usb_stor_transparent_scsi_command(struct scsi_cmnd *srb,
           struct us_data *us)
{

 usb_stor_invoke_transport(srb, us);
}
