
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u16 ;
struct _sas_device {int slot; scalar_t__ enclosure_logical_id; int phy; scalar_t__ sas_address; } ;
struct _pcie_device {scalar_t__ enclosure_handle; int slot; scalar_t__ enclosure_logical_id; int port_num; scalar_t__ wwid; } ;
struct MPT3SAS_ADAPTER {int logging_level; char* tmp_string; } ;
struct TYPE_14__ {scalar_t__ IOCLogInfo; scalar_t__ IOCStatus; } ;
struct TYPE_9__ {int PageType; int PageNumber; } ;
struct TYPE_13__ {int Function; int ExtPageType; TYPE_1__ Header; } ;
struct TYPE_12__ {int SCSIState; int SCSIStatus; scalar_t__ DevHandle; } ;
struct TYPE_10__ {int* CDB32; } ;
struct TYPE_11__ {scalar_t__ IoFlags; TYPE_2__ CDB; } ;
typedef TYPE_3__ Mpi2SCSIIORequest_t ;
typedef TYPE_4__ Mpi2SCSIIOReply_t ;
typedef TYPE_5__ Mpi2ConfigRequest_t ;
typedef TYPE_6__ MPI2DefaultReply_t ;


 int MPI2_CONFIG_PAGETYPE_MASK ;
 int MPT_DEBUG_IOCTL ;
 int MPT_STRING_LENGTH ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,...) ;
 int ioc_warn (struct MPT3SAS_ADAPTER*,char*,unsigned long long,int ) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (scalar_t__) ;
 TYPE_5__* mpt3sas_base_get_msg_frame (struct MPT3SAS_ADAPTER*,int ) ;
 struct _pcie_device* mpt3sas_get_pdev_by_handle (struct MPT3SAS_ADAPTER*,int) ;
 struct _sas_device* mpt3sas_get_sdev_by_handle (struct MPT3SAS_ADAPTER*,int) ;
 int pcie_device_put (struct _pcie_device*) ;
 int sas_device_put (struct _sas_device*) ;
 int snprintf (char*,int ,char*,int,int,...) ;

__attribute__((used)) static void
_ctl_display_some_debug(struct MPT3SAS_ADAPTER *ioc, u16 smid,
 char *calling_function_name, MPI2DefaultReply_t *mpi_reply)
{
 Mpi2ConfigRequest_t *mpi_request;
 char *desc = ((void*)0);

 if (!(ioc->logging_level & MPT_DEBUG_IOCTL))
  return;

 mpi_request = mpt3sas_base_get_msg_frame(ioc, smid);
 switch (mpi_request->Function) {
 case 130:
 {
  Mpi2SCSIIORequest_t *scsi_request =
      (Mpi2SCSIIORequest_t *)mpi_request;

  snprintf(ioc->tmp_string, MPT_STRING_LENGTH,
      "scsi_io, cmd(0x%02x), cdb_len(%d)",
      scsi_request->CDB.CDB32[0],
      le16_to_cpu(scsi_request->IoFlags) & 0xF);
  desc = ioc->tmp_string;
  break;
 }
 case 129:
  desc = "task_mgmt";
  break;
 case 137:
  desc = "ioc_init";
  break;
 case 138:
  desc = "ioc_facts";
  break;
 case 144:
 {
  Mpi2ConfigRequest_t *config_request =
      (Mpi2ConfigRequest_t *)mpi_request;

  snprintf(ioc->tmp_string, MPT_STRING_LENGTH,
      "config, type(0x%02x), ext_type(0x%02x), number(%d)",
      (config_request->Header.PageType &
       MPI2_CONFIG_PAGETYPE_MASK), config_request->ExtPageType,
      config_request->Header.PageNumber);
  desc = ioc->tmp_string;
  break;
 }
 case 135:
  desc = "port_facts";
  break;
 case 136:
  desc = "port_enable";
  break;
 case 141:
  desc = "event_notification";
  break;
 case 140:
  desc = "fw_download";
  break;
 case 139:
  desc = "fw_upload";
  break;
 case 134:
  desc = "raid_action";
  break;
 case 133:
 {
  Mpi2SCSIIORequest_t *scsi_request =
      (Mpi2SCSIIORequest_t *)mpi_request;

  snprintf(ioc->tmp_string, MPT_STRING_LENGTH,
      "raid_pass, cmd(0x%02x), cdb_len(%d)",
      scsi_request->CDB.CDB32[0],
      le16_to_cpu(scsi_request->IoFlags) & 0xF);
  desc = ioc->tmp_string;
  break;
 }
 case 132:
  desc = "sas_iounit_cntl";
  break;
 case 131:
  desc = "sata_pass";
  break;
 case 143:
  desc = "diag_buffer_post";
  break;
 case 142:
  desc = "diag_release";
  break;
 case 128:
  desc = "smp_passthrough";
  break;
 }

 if (!desc)
  return;

 ioc_info(ioc, "%s: %s, smid(%d)\n", calling_function_name, desc, smid);

 if (!mpi_reply)
  return;

 if (mpi_reply->IOCStatus || mpi_reply->IOCLogInfo)
  ioc_info(ioc, "\tiocstatus(0x%04x), loginfo(0x%08x)\n",
    le16_to_cpu(mpi_reply->IOCStatus),
    le32_to_cpu(mpi_reply->IOCLogInfo));

 if (mpi_request->Function == 130 ||
     mpi_request->Function ==
     133) {
  Mpi2SCSIIOReply_t *scsi_reply =
      (Mpi2SCSIIOReply_t *)mpi_reply;
  struct _sas_device *sas_device = ((void*)0);
  struct _pcie_device *pcie_device = ((void*)0);

  sas_device = mpt3sas_get_sdev_by_handle(ioc,
      le16_to_cpu(scsi_reply->DevHandle));
  if (sas_device) {
   ioc_warn(ioc, "\tsas_address(0x%016llx), phy(%d)\n",
     (u64)sas_device->sas_address,
     sas_device->phy);
   ioc_warn(ioc, "\tenclosure_logical_id(0x%016llx), slot(%d)\n",
     (u64)sas_device->enclosure_logical_id,
     sas_device->slot);
   sas_device_put(sas_device);
  }
  if (!sas_device) {
   pcie_device = mpt3sas_get_pdev_by_handle(ioc,
    le16_to_cpu(scsi_reply->DevHandle));
   if (pcie_device) {
    ioc_warn(ioc, "\tWWID(0x%016llx), port(%d)\n",
      (unsigned long long)pcie_device->wwid,
      pcie_device->port_num);
    if (pcie_device->enclosure_handle != 0)
     ioc_warn(ioc, "\tenclosure_logical_id(0x%016llx), slot(%d)\n",
       (u64)pcie_device->enclosure_logical_id,
       pcie_device->slot);
    pcie_device_put(pcie_device);
   }
  }
  if (scsi_reply->SCSIState || scsi_reply->SCSIStatus)
   ioc_info(ioc, "\tscsi_state(0x%02x), scsi_status(0x%02x)\n",
     scsi_reply->SCSIState,
     scsi_reply->SCSIStatus);
 }
}
