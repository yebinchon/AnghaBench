
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct scsi_target {int target_busy; struct MPT3SAS_TARGET* hostdata; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct _sas_device {scalar_t__ volume_handle; } ;
struct _pcie_device {int reset_timeout; int device_info; } ;
struct MPT3SAS_TARGET {int dummy; } ;
struct MPT3SAS_DEVICE {TYPE_2__* sas_target; } ;
struct MPT3SAS_ADAPTER {int tm_custom_handling; scalar_t__ remove_host; } ;
struct TYPE_4__ {int flags; scalar_t__ handle; } ;
struct TYPE_3__ {struct MPT3SAS_DEVICE* hostdata; struct scsi_target* sdev_target; int host; } ;


 int DID_NO_CONNECT ;
 int DID_RESET ;
 int FAILED ;
 int KERN_INFO ;
 int MPI26_SCSITASKMGMT_MSGFLAGS_PROTOCOL_LVL_RST_PCIE ;
 int MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET ;
 int MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET ;
 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 int SUCCESS ;
 int _scsih_tm_display_info (struct MPT3SAS_ADAPTER*,struct scsi_cmnd*) ;
 scalar_t__ atomic_read (int *) ;
 struct _pcie_device* mpt3sas_get_pdev_by_handle (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 struct _sas_device* mpt3sas_get_sdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 int mpt3sas_scsih_is_pcie_scsi_device (int ) ;
 int mpt3sas_scsih_issue_locked_tm (struct MPT3SAS_ADAPTER*,scalar_t__,int ,int ,int ,int ,int,int) ;
 int pcie_device_put (struct _pcie_device*) ;
 int sas_device_put (struct _sas_device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (int ) ;
 int starget_printk (int ,struct scsi_target*,char*,...) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int
scsih_target_reset(struct scsi_cmnd *scmd)
{
 struct MPT3SAS_ADAPTER *ioc = shost_priv(scmd->device->host);
 struct MPT3SAS_DEVICE *sas_device_priv_data;
 struct _sas_device *sas_device = ((void*)0);
 struct _pcie_device *pcie_device = ((void*)0);
 u16 handle;
 u8 tr_method = 0;
 u8 tr_timeout = 30;
 int r;
 struct scsi_target *starget = scmd->device->sdev_target;
 struct MPT3SAS_TARGET *target_priv_data = starget->hostdata;

 starget_printk(KERN_INFO, starget, "attempting target reset! scmd(%p)\n",
  scmd);
 _scsih_tm_display_info(ioc, scmd);

 sas_device_priv_data = scmd->device->hostdata;
 if (!sas_device_priv_data || !sas_device_priv_data->sas_target ||
     ioc->remove_host) {
  starget_printk(KERN_INFO, starget, "target been deleted! scmd(%p)\n",
   scmd);
  scmd->result = DID_NO_CONNECT << 16;
  scmd->scsi_done(scmd);
  r = SUCCESS;
  goto out;
 }


 handle = 0;
 if (sas_device_priv_data->sas_target->flags &
     MPT_TARGET_FLAGS_RAID_COMPONENT) {
  sas_device = mpt3sas_get_sdev_from_target(ioc,
    target_priv_data);
  if (sas_device)
   handle = sas_device->volume_handle;
 } else
  handle = sas_device_priv_data->sas_target->handle;

 if (!handle) {
  scmd->result = DID_RESET << 16;
  r = FAILED;
  goto out;
 }

 pcie_device = mpt3sas_get_pdev_by_handle(ioc, handle);

 if (pcie_device && (!ioc->tm_custom_handling) &&
     (!(mpt3sas_scsih_is_pcie_scsi_device(pcie_device->device_info)))) {
  tr_timeout = pcie_device->reset_timeout;
  tr_method = MPI26_SCSITASKMGMT_MSGFLAGS_PROTOCOL_LVL_RST_PCIE;
 } else
  tr_method = MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET;
 r = mpt3sas_scsih_issue_locked_tm(ioc, handle, 0,
  MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET, 0, 0,
     tr_timeout, tr_method);

 if (r == SUCCESS && atomic_read(&starget->target_busy))
  r = FAILED;
 out:
 starget_printk(KERN_INFO, starget, "target reset: %s scmd(%p)\n",
     ((r == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);

 if (sas_device)
  sas_device_put(sas_device);
 if (pcie_device)
  pcie_device_put(pcie_device);
 return r;
}
