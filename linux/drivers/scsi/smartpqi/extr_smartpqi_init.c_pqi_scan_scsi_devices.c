
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int scan_mutex; } ;


 int EINPROGRESS ;
 int ENXIO ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 int pqi_schedule_rescan_worker_delayed (struct pqi_ctrl_info*) ;
 int pqi_update_scsi_devices (struct pqi_ctrl_info*) ;

__attribute__((used)) static int pqi_scan_scsi_devices(struct pqi_ctrl_info *ctrl_info)
{
 int rc = 0;

 if (pqi_ctrl_offline(ctrl_info))
  return -ENXIO;

 if (!mutex_trylock(&ctrl_info->scan_mutex)) {
  pqi_schedule_rescan_worker_delayed(ctrl_info);
  rc = -EINPROGRESS;
 } else {
  rc = pqi_update_scsi_devices(ctrl_info);
  if (rc)
   pqi_schedule_rescan_worker_delayed(ctrl_info);
  mutex_unlock(&ctrl_info->scan_mutex);
 }

 return rc;
}
