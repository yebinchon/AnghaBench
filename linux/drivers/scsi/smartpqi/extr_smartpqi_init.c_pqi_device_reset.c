
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int dummy; } ;
struct pqi_ctrl_info {int lun_reset_mutex; } ;


 int FAILED ;
 int _pqi_device_reset (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pqi_ctrl_block_requests (struct pqi_ctrl_info*) ;
 int pqi_ctrl_unblock_requests (struct pqi_ctrl_info*) ;
 int pqi_ctrl_wait_until_quiesced (struct pqi_ctrl_info*) ;
 int pqi_device_reset_done (struct pqi_scsi_dev*) ;
 int pqi_device_reset_start (struct pqi_scsi_dev*) ;
 int pqi_fail_io_queued_for_device (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ;
 int pqi_wait_until_inbound_queues_empty (struct pqi_ctrl_info*) ;

__attribute__((used)) static int pqi_device_reset(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 int rc;

 mutex_lock(&ctrl_info->lun_reset_mutex);

 pqi_ctrl_block_requests(ctrl_info);
 pqi_ctrl_wait_until_quiesced(ctrl_info);
 pqi_fail_io_queued_for_device(ctrl_info, device);
 rc = pqi_wait_until_inbound_queues_empty(ctrl_info);
 pqi_device_reset_start(device);
 pqi_ctrl_unblock_requests(ctrl_info);

 if (rc)
  rc = FAILED;
 else
  rc = _pqi_device_reset(ctrl_info, device);

 pqi_device_reset_done(device);

 mutex_unlock(&ctrl_info->lun_reset_mutex);

 return rc;
}
