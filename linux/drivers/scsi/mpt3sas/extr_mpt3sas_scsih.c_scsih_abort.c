
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct scsiio_tracker {int cb_idx; int msix_io; int smid; } ;
struct scsi_cmnd {int result; TYPE_2__* device; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct _pcie_device {int device_info; } ;
struct MPT3SAS_DEVICE {TYPE_1__* sas_target; } ;
struct MPT3SAS_ADAPTER {int nvme_abort_timeout; int tm_custom_handling; scalar_t__ remove_host; } ;
struct TYPE_4__ {int lun; struct MPT3SAS_DEVICE* hostdata; int host; } ;
struct TYPE_3__ {int flags; int handle; } ;


 int DID_NO_CONNECT ;
 int DID_RESET ;
 int FAILED ;
 int KERN_INFO ;
 int MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK ;
 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 int MPT_TARGET_FLAGS_VOLUME ;
 int SUCCESS ;
 int _scsih_tm_display_info (struct MPT3SAS_ADAPTER*,struct scsi_cmnd*) ;
 struct _pcie_device* mpt3sas_get_pdev_by_handle (struct MPT3SAS_ADAPTER*,int ) ;
 int mpt3sas_halt_firmware (struct MPT3SAS_ADAPTER*) ;
 int mpt3sas_scsih_is_pcie_scsi_device (int ) ;
 int mpt3sas_scsih_issue_locked_tm (struct MPT3SAS_ADAPTER*,int ,int ,int ,int ,int ,int,int ) ;
 int pcie_device_put (struct _pcie_device*) ;
 struct scsiio_tracker* scsi_cmd_priv (struct scsi_cmnd*) ;
 int sdev_printk (int ,TYPE_2__*,char*,...) ;
 struct MPT3SAS_ADAPTER* shost_priv (int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int
scsih_abort(struct scsi_cmnd *scmd)
{
 struct MPT3SAS_ADAPTER *ioc = shost_priv(scmd->device->host);
 struct MPT3SAS_DEVICE *sas_device_priv_data;
 struct scsiio_tracker *st = scsi_cmd_priv(scmd);
 u16 handle;
 int r;

 u8 timeout = 30;
 struct _pcie_device *pcie_device = ((void*)0);
 sdev_printk(KERN_INFO, scmd->device,
  "attempting task abort! scmd(%p)\n", scmd);
 _scsih_tm_display_info(ioc, scmd);

 sas_device_priv_data = scmd->device->hostdata;
 if (!sas_device_priv_data || !sas_device_priv_data->sas_target ||
     ioc->remove_host) {
  sdev_printk(KERN_INFO, scmd->device,
   "device been deleted! scmd(%p)\n", scmd);
  scmd->result = DID_NO_CONNECT << 16;
  scmd->scsi_done(scmd);
  r = SUCCESS;
  goto out;
 }


 if (st == ((void*)0) || st->cb_idx == 0xFF) {
  scmd->result = DID_RESET << 16;
  r = SUCCESS;
  goto out;
 }


 if (sas_device_priv_data->sas_target->flags &
     MPT_TARGET_FLAGS_RAID_COMPONENT ||
     sas_device_priv_data->sas_target->flags & MPT_TARGET_FLAGS_VOLUME) {
  scmd->result = DID_RESET << 16;
  r = FAILED;
  goto out;
 }

 mpt3sas_halt_firmware(ioc);

 handle = sas_device_priv_data->sas_target->handle;
 pcie_device = mpt3sas_get_pdev_by_handle(ioc, handle);
 if (pcie_device && (!ioc->tm_custom_handling) &&
     (!(mpt3sas_scsih_is_pcie_scsi_device(pcie_device->device_info))))
  timeout = ioc->nvme_abort_timeout;
 r = mpt3sas_scsih_issue_locked_tm(ioc, handle, scmd->device->lun,
  MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK,
  st->smid, st->msix_io, timeout, 0);

 if (r == SUCCESS && st->cb_idx != 0xFF)
  r = FAILED;
 out:
 sdev_printk(KERN_INFO, scmd->device, "task abort: %s scmd(%p)\n",
     ((r == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);
 if (pcie_device)
  pcie_device_put(pcie_device);
 return r;
}
