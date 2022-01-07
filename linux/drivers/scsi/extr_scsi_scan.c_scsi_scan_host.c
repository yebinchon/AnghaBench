
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_scan_data {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int async_schedule (int ,struct async_scan_data*) ;
 int do_scan_async ;
 int do_scsi_scan_host (struct Scsi_Host*) ;
 scalar_t__ scsi_autopm_get_host (struct Scsi_Host*) ;
 int scsi_autopm_put_host (struct Scsi_Host*) ;
 struct async_scan_data* scsi_prep_async_scan (struct Scsi_Host*) ;
 int scsi_scan_type ;
 scalar_t__ strncmp (int ,char*,int) ;

void scsi_scan_host(struct Scsi_Host *shost)
{
 struct async_scan_data *data;

 if (strncmp(scsi_scan_type, "none", 4) == 0 ||
     strncmp(scsi_scan_type, "manual", 6) == 0)
  return;
 if (scsi_autopm_get_host(shost) < 0)
  return;

 data = scsi_prep_async_scan(shost);
 if (!data) {
  do_scsi_scan_host(shost);
  scsi_autopm_put_host(shost);
  return;
 }




 async_schedule(do_scan_async, data);


}
