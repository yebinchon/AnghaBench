
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct sense_info {char* skey; int asc; char* ascq; } ;
struct scsi_target {struct MPT3SAS_TARGET* hostdata; } ;
struct scsi_cmnd {int sense_buffer; int result; int underflow; TYPE_1__* device; } ;
struct _sas_device {int phy; scalar_t__ sas_address; } ;
struct _pcie_device {scalar_t__ enclosure_handle; scalar_t__* connector_name; int enclosure_level; scalar_t__* slot; scalar_t__ enclosure_logical_id; scalar_t__* port_num; scalar_t__ wwid; } ;
struct MPT3SAS_TARGET {int flags; scalar_t__ sas_address; } ;
struct MPT3SAS_ADAPTER {char* tmp_string; scalar_t__ hide_ir_msg; } ;
struct TYPE_5__ {int SCSIState; int SCSIStatus; int ResponseInfo; int SenseCount; int TransferCount; int TaskTag; int DevHandle; int IOCLogInfo; int IOCStatus; } ;
struct TYPE_4__ {struct scsi_target* sdev_target; } ;
typedef TYPE_2__ Mpi2SCSIIOReply_t ;







 int MPI2_IOCSTATUS_MASK ;
 int MPI2_SCSI_STATE_AUTOSENSE_FAILED ;
 int MPI2_SCSI_STATE_AUTOSENSE_VALID ;
 int MPI2_SCSI_STATE_NO_SCSI_STATUS ;
 int MPI2_SCSI_STATE_RESPONSE_INFO_VALID ;
 int MPI2_SCSI_STATE_TERMINATED ;
 int MPT_TARGET_FLAGS_PCIE_DEVICE ;
 int MPT_TARGET_FLAGS_VOLUME ;
 int _scsih_display_enclosure_chassis_info (struct MPT3SAS_ADAPTER*,struct _sas_device*,int *,int *) ;
 int _scsih_normalize_sense (int ,struct sense_info*) ;
 int _scsih_response_code (struct MPT3SAS_ADAPTER*,int) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int ,scalar_t__*) ;
 int ioc_warn (struct MPT3SAS_ADAPTER*,char*,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct _pcie_device* mpt3sas_get_pdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 struct _sas_device* mpt3sas_get_sdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 int pcie_device_put (struct _pcie_device*) ;
 int sas_device_put (struct _sas_device*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_print_command (struct scsi_cmnd*) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void
_scsih_scsi_ioc_info(struct MPT3SAS_ADAPTER *ioc, struct scsi_cmnd *scmd,
 Mpi2SCSIIOReply_t *mpi_reply, u16 smid)
{
 u32 response_info;
 u8 *response_bytes;
 u16 ioc_status = le16_to_cpu(mpi_reply->IOCStatus) &
     MPI2_IOCSTATUS_MASK;
 u8 scsi_state = mpi_reply->SCSIState;
 u8 scsi_status = mpi_reply->SCSIStatus;
 char *desc_ioc_state = ((void*)0);
 char *desc_scsi_status = ((void*)0);
 char *desc_scsi_state = ioc->tmp_string;
 u32 log_info = le32_to_cpu(mpi_reply->IOCLogInfo);
 struct _sas_device *sas_device = ((void*)0);
 struct _pcie_device *pcie_device = ((void*)0);
 struct scsi_target *starget = scmd->device->sdev_target;
 struct MPT3SAS_TARGET *priv_target = starget->hostdata;
 char *device_str = ((void*)0);

 if (!priv_target)
  return;
 if (ioc->hide_ir_msg)
  device_str = "WarpDrive";
 else
  device_str = "volume";

 if (log_info == 0x31170000)
  return;

 switch (ioc_status) {
 case 139:
  desc_ioc_state = "success";
  break;
 case 152:
  desc_ioc_state = "invalid function";
  break;
 case 143:
  desc_ioc_state = "scsi recovered error";
  break;
 case 147:
  desc_ioc_state = "scsi invalid dev handle";
  break;
 case 149:
  desc_ioc_state = "scsi device not there";
  break;
 case 151:
  desc_ioc_state = "scsi data overrun";
  break;
 case 150:
  desc_ioc_state = "scsi data underrun";
  break;
 case 145:
  desc_ioc_state = "scsi io data error";
  break;
 case 144:
  desc_ioc_state = "scsi protocol error";
  break;
 case 140:
  desc_ioc_state = "scsi task terminated";
  break;
 case 142:
  desc_ioc_state = "scsi residual mismatch";
  break;
 case 141:
  desc_ioc_state = "scsi task mgmt failed";
  break;
 case 146:
  desc_ioc_state = "scsi ioc terminated";
  break;
 case 148:
  desc_ioc_state = "scsi ext terminated";
  break;
 case 155:
  desc_ioc_state = "eedp guard error";
  break;
 case 154:
  desc_ioc_state = "eedp ref tag error";
  break;
 case 156:
  desc_ioc_state = "eedp app tag error";
  break;
 case 153:
  desc_ioc_state = "insufficient power";
  break;
 default:
  desc_ioc_state = "unknown";
  break;
 }

 switch (scsi_status) {
 case 133:
  desc_scsi_status = "good";
  break;
 case 136:
  desc_scsi_status = "check condition";
  break;
 case 134:
  desc_scsi_status = "condition met";
  break;
 case 137:
  desc_scsi_status = "busy";
  break;
 case 132:
  desc_scsi_status = "intermediate";
  break;
 case 131:
  desc_scsi_status = "intermediate condmet";
  break;
 case 130:
  desc_scsi_status = "reservation conflict";
  break;
 case 135:
  desc_scsi_status = "command terminated";
  break;
 case 128:
  desc_scsi_status = "task set full";
  break;
 case 138:
  desc_scsi_status = "aca active";
  break;
 case 129:
  desc_scsi_status = "task aborted";
  break;
 default:
  desc_scsi_status = "unknown";
  break;
 }

 desc_scsi_state[0] = '\0';
 if (!scsi_state)
  desc_scsi_state = " ";
 if (scsi_state & MPI2_SCSI_STATE_RESPONSE_INFO_VALID)
  strcat(desc_scsi_state, "response info ");
 if (scsi_state & MPI2_SCSI_STATE_TERMINATED)
  strcat(desc_scsi_state, "state terminated ");
 if (scsi_state & MPI2_SCSI_STATE_NO_SCSI_STATUS)
  strcat(desc_scsi_state, "no status ");
 if (scsi_state & MPI2_SCSI_STATE_AUTOSENSE_FAILED)
  strcat(desc_scsi_state, "autosense failed ");
 if (scsi_state & MPI2_SCSI_STATE_AUTOSENSE_VALID)
  strcat(desc_scsi_state, "autosense valid ");

 scsi_print_command(scmd);

 if (priv_target->flags & MPT_TARGET_FLAGS_VOLUME) {
  ioc_warn(ioc, "\t%s wwid(0x%016llx)\n",
    device_str, (u64)priv_target->sas_address);
 } else if (priv_target->flags & MPT_TARGET_FLAGS_PCIE_DEVICE) {
  pcie_device = mpt3sas_get_pdev_from_target(ioc, priv_target);
  if (pcie_device) {
   ioc_info(ioc, "\twwid(0x%016llx), port(%d)\n",
     (u64)pcie_device->wwid, pcie_device->port_num);
   if (pcie_device->enclosure_handle != 0)
    ioc_info(ioc, "\tenclosure logical id(0x%016llx), slot(%d)\n",
      (u64)pcie_device->enclosure_logical_id,
      pcie_device->slot);
   if (pcie_device->connector_name[0])
    ioc_info(ioc, "\tenclosure level(0x%04x), connector name( %s)\n",
      pcie_device->enclosure_level,
      pcie_device->connector_name);
   pcie_device_put(pcie_device);
  }
 } else {
  sas_device = mpt3sas_get_sdev_from_target(ioc, priv_target);
  if (sas_device) {
   ioc_warn(ioc, "\tsas_address(0x%016llx), phy(%d)\n",
     (u64)sas_device->sas_address, sas_device->phy);

   _scsih_display_enclosure_chassis_info(ioc, sas_device,
       ((void*)0), ((void*)0));

   sas_device_put(sas_device);
  }
 }

 ioc_warn(ioc, "\thandle(0x%04x), ioc_status(%s)(0x%04x), smid(%d)\n",
   le16_to_cpu(mpi_reply->DevHandle),
   desc_ioc_state, ioc_status, smid);
 ioc_warn(ioc, "\trequest_len(%d), underflow(%d), resid(%d)\n",
   scsi_bufflen(scmd), scmd->underflow, scsi_get_resid(scmd));
 ioc_warn(ioc, "\ttag(%d), transfer_count(%d), sc->result(0x%08x)\n",
   le16_to_cpu(mpi_reply->TaskTag),
   le32_to_cpu(mpi_reply->TransferCount), scmd->result);
 ioc_warn(ioc, "\tscsi_status(%s)(0x%02x), scsi_state(%s)(0x%02x)\n",
   desc_scsi_status, scsi_status, desc_scsi_state, scsi_state);

 if (scsi_state & MPI2_SCSI_STATE_AUTOSENSE_VALID) {
  struct sense_info data;
  _scsih_normalize_sense(scmd->sense_buffer, &data);
  ioc_warn(ioc, "\t[sense_key,asc,ascq]: [0x%02x,0x%02x,0x%02x], count(%d)\n",
    data.skey, data.asc, data.ascq,
    le32_to_cpu(mpi_reply->SenseCount));
 }
 if (scsi_state & MPI2_SCSI_STATE_RESPONSE_INFO_VALID) {
  response_info = le32_to_cpu(mpi_reply->ResponseInfo);
  response_bytes = (u8 *)&response_info;
  _scsih_response_code(ioc, response_bytes[0]);
 }
}
