
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int fflags; } ;
struct Scsi_Host {int max_id; } ;


 int US_FL_SCM_MULT_TARG ;
 int scsi_report_device_reset (struct Scsi_Host*,int ,int) ;
 struct Scsi_Host* us_to_host (struct us_data*) ;

void usb_stor_report_device_reset(struct us_data *us)
{
 int i;
 struct Scsi_Host *host = us_to_host(us);

 scsi_report_device_reset(host, 0, 0);
 if (us->fflags & US_FL_SCM_MULT_TARG) {
  for (i = 1; i < host->max_id; ++i)
   scsi_report_device_reset(host, 0, i);
 }
}
