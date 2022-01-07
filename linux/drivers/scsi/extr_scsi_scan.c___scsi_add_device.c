
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u64 ;
struct scsi_target {int dev; } ;
struct scsi_device {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int scan_mutex; int async_scan; struct device shost_gendev; } ;


 int ENODEV ;
 int ENOMEM ;
 struct scsi_device* ERR_PTR (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 struct scsi_target* scsi_alloc_target (struct device*,int ,int ) ;
 scalar_t__ scsi_autopm_get_host (struct Scsi_Host*) ;
 int scsi_autopm_get_target (struct scsi_target*) ;
 int scsi_autopm_put_host (struct Scsi_Host*) ;
 int scsi_autopm_put_target (struct scsi_target*) ;
 int scsi_complete_async_scans () ;
 scalar_t__ scsi_host_scan_allowed (struct Scsi_Host*) ;
 int scsi_probe_and_add_lun (struct scsi_target*,int ,int *,struct scsi_device**,int,void*) ;
 int scsi_scan_type ;
 int scsi_target_reap (struct scsi_target*) ;
 scalar_t__ strncmp (int ,char*,int) ;

struct scsi_device *__scsi_add_device(struct Scsi_Host *shost, uint channel,
          uint id, u64 lun, void *hostdata)
{
 struct scsi_device *sdev = ERR_PTR(-ENODEV);
 struct device *parent = &shost->shost_gendev;
 struct scsi_target *starget;

 if (strncmp(scsi_scan_type, "none", 4) == 0)
  return ERR_PTR(-ENODEV);

 starget = scsi_alloc_target(parent, channel, id);
 if (!starget)
  return ERR_PTR(-ENOMEM);
 scsi_autopm_get_target(starget);

 mutex_lock(&shost->scan_mutex);
 if (!shost->async_scan)
  scsi_complete_async_scans();

 if (scsi_host_scan_allowed(shost) && scsi_autopm_get_host(shost) == 0) {
  scsi_probe_and_add_lun(starget, lun, ((void*)0), &sdev, 1, hostdata);
  scsi_autopm_put_host(shost);
 }
 mutex_unlock(&shost->scan_mutex);
 scsi_autopm_put_target(starget);




 scsi_target_reap(starget);
 put_device(&starget->dev);

 return sdev;
}
