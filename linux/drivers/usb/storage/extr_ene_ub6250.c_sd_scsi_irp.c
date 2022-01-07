
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {scalar_t__ extra; } ;
struct scsi_cmnd {int* cmnd; } ;
struct ene_ub6250_info {int SrbStatus; } ;







 int SS_ILLEGAL_REQUEST ;
 int SS_SUCCESS ;

 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_TRANSPORT_GOOD ;

 int do_scsi_inquiry (struct us_data*,struct scsi_cmnd*) ;
 int do_scsi_request_sense (struct us_data*,struct scsi_cmnd*) ;
 int sd_scsi_mode_sense (struct us_data*,struct scsi_cmnd*) ;
 int sd_scsi_read (struct us_data*,struct scsi_cmnd*) ;
 int sd_scsi_read_capacity (struct us_data*,struct scsi_cmnd*) ;
 int sd_scsi_test_unit_ready (struct us_data*,struct scsi_cmnd*) ;
 int sd_scsi_write (struct us_data*,struct scsi_cmnd*) ;

__attribute__((used)) static int sd_scsi_irp(struct us_data *us, struct scsi_cmnd *srb)
{
 int result;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *)us->extra;

 switch (srb->cmnd[0]) {
 case 129:
  result = sd_scsi_test_unit_ready(us, srb);
  break;
 case 130:
  result = do_scsi_request_sense(us, srb);
  break;
 case 134:
  result = do_scsi_inquiry(us, srb);
  break;
 case 133:
  result = sd_scsi_mode_sense(us, srb);
  break;





 case 131:
  result = sd_scsi_read_capacity(us, srb);
  break;
 case 132:
  result = sd_scsi_read(us, srb);
  break;
 case 128:
  result = sd_scsi_write(us, srb);
  break;
 default:
  info->SrbStatus = SS_ILLEGAL_REQUEST;
  result = USB_STOR_TRANSPORT_FAILED;
  break;
 }
 if (result == USB_STOR_TRANSPORT_GOOD)
  info->SrbStatus = SS_SUCCESS;
 return result;
}
