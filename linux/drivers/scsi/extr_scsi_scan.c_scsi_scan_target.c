
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;
struct Scsi_Host {int scan_mutex; int async_scan; } ;
typedef enum scsi_scan_mode { ____Placeholder_scsi_scan_mode } scsi_scan_mode ;


 int SCSI_SCAN_MANUAL ;
 int __scsi_scan_target (struct device*,unsigned int,unsigned int,int ,int) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scsi_autopm_get_host (struct Scsi_Host*) ;
 int scsi_autopm_put_host (struct Scsi_Host*) ;
 int scsi_complete_async_scans () ;
 scalar_t__ scsi_host_scan_allowed (struct Scsi_Host*) ;
 int scsi_scan_type ;
 scalar_t__ strncmp (int ,char*,int) ;

void scsi_scan_target(struct device *parent, unsigned int channel,
        unsigned int id, u64 lun, enum scsi_scan_mode rescan)
{
 struct Scsi_Host *shost = dev_to_shost(parent);

 if (strncmp(scsi_scan_type, "none", 4) == 0)
  return;

 if (rescan != SCSI_SCAN_MANUAL &&
     strncmp(scsi_scan_type, "manual", 6) == 0)
  return;

 mutex_lock(&shost->scan_mutex);
 if (!shost->async_scan)
  scsi_complete_async_scans();

 if (scsi_host_scan_allowed(shost) && scsi_autopm_get_host(shost) == 0) {
  __scsi_scan_target(parent, channel, id, lun, rescan);
  scsi_autopm_put_host(shost);
 }
 mutex_unlock(&shost->scan_mutex);
}
