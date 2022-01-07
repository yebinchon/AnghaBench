
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct us_data {scalar_t__ extra; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_4__ {scalar_t__ Ready; } ;
struct TYPE_3__ {scalar_t__ Ready; } ;
struct ene_ub6250_info {TYPE_2__ MS_Status; TYPE_1__ SD_Status; } ;


 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_XFER_GOOD ;
 int ene_init (struct us_data*) ;
 int ms_scsi_irp (struct us_data*,struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int sd_scsi_irp (struct us_data*,struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ene_transport(struct scsi_cmnd *srb, struct us_data *us)
{
 int result = USB_STOR_XFER_GOOD;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *)(us->extra);


 scsi_set_resid(srb, 0);
 if (unlikely(!(info->SD_Status.Ready || info->MS_Status.Ready)))
  result = ene_init(us);
 if (result == USB_STOR_XFER_GOOD) {
  result = USB_STOR_TRANSPORT_ERROR;
  if (info->SD_Status.Ready)
   result = sd_scsi_irp(us, srb);

  if (info->MS_Status.Ready)
   result = ms_scsi_irp(us, srb);
 }
 return result;
}
