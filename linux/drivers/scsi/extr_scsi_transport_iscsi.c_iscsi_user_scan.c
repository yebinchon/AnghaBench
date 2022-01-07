
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint ;
typedef int u64 ;
struct iscsi_scan_data {int rescan; int lun; void* id; void* channel; } ;
struct Scsi_Host {int shost_gendev; } ;


 int SCSI_SCAN_MANUAL ;
 int device_for_each_child (int *,struct iscsi_scan_data*,int ) ;
 int iscsi_user_scan_session ;

__attribute__((used)) static int iscsi_user_scan(struct Scsi_Host *shost, uint channel,
      uint id, u64 lun)
{
 struct iscsi_scan_data scan_data;

 scan_data.channel = channel;
 scan_data.id = id;
 scan_data.lun = lun;
 scan_data.rescan = SCSI_SCAN_MANUAL;

 return device_for_each_child(&shost->shost_gendev, &scan_data,
         iscsi_user_scan_session);
}
