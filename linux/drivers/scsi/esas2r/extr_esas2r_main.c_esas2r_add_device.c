
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct scsi_device {int sdev_gendev; } ;
struct esas2r_adapter {TYPE_1__* host; } ;
struct TYPE_3__ {int shost_gendev; } ;


 int ESAS2R_LOG_CRIT ;
 int ESAS2R_LOG_INFO ;
 int ESAS2R_LOG_WARN ;
 int esas2r_log_dev (int ,int *,char*,int,...) ;
 int scsi_add_device (TYPE_1__*,int ,int ,int ) ;
 struct scsi_device* scsi_device_lookup (TYPE_1__*,int ,int ,int ) ;
 int scsi_device_put (struct scsi_device*) ;

__attribute__((used)) static void esas2r_add_device(struct esas2r_adapter *a, u16 target_id)
{
 int ret;
 struct scsi_device *scsi_dev;

 scsi_dev = scsi_device_lookup(a->host, 0, target_id, 0);

 if (scsi_dev) {
  esas2r_log_dev(
   ESAS2R_LOG_WARN,
   &(scsi_dev->
     sdev_gendev),
   "scsi device already exists at id %d", target_id);

  scsi_device_put(scsi_dev);
 } else {
  esas2r_log_dev(
   ESAS2R_LOG_INFO,
   &(a->host->
     shost_gendev),
   "scsi_add_device() called for 0:%d:0",
   target_id);

  ret = scsi_add_device(a->host, 0, target_id, 0);
  if (ret) {
   esas2r_log_dev(
    ESAS2R_LOG_CRIT,
    &(a->host->
      shost_gendev),
    "scsi_add_device failed with %d for id %d",
    ret, target_id);
  }
 }
}
