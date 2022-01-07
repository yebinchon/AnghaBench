
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct scsi_cmnd {int result; } ;
struct aac_hba_resp {int status; } ;
struct aac_dev {TYPE_1__** hba_map; } ;
struct TYPE_2__ {int rmw_nexus; int devtype; } ;


 int AAC_DEVTYPE_ARC_RAW ;
 int AAC_DEVTYPE_NATIVE_RAW ;
 int ABORT ;
 int COMMAND_COMPLETE ;
 int DID_ABORT ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;







 int SAM_STAT_BUSY ;
 size_t aac_logical_to_phys (int ) ;
 int scmd_channel (struct scsi_cmnd*) ;
 size_t scmd_id (struct scsi_cmnd*) ;

__attribute__((used)) static void hba_resp_task_failure(struct aac_dev *dev,
     struct scsi_cmnd *scsicmd,
     struct aac_hba_resp *err)
{
 switch (err->status) {
 case 134:
 {
  u32 bus, cid;

  bus = aac_logical_to_phys(scmd_channel(scsicmd));
  cid = scmd_id(scsicmd);
  if (dev->hba_map[bus][cid].devtype == AAC_DEVTYPE_NATIVE_RAW) {
   dev->hba_map[bus][cid].devtype = AAC_DEVTYPE_ARC_RAW;
   dev->hba_map[bus][cid].rmw_nexus = 0xffffffff;
  }
  scsicmd->result = DID_NO_CONNECT << 16 | COMMAND_COMPLETE << 8;
  break;
 }
 case 131:
 case 130:
  scsicmd->result = DID_OK << 16 |
   COMMAND_COMPLETE << 8 | SAM_STAT_BUSY;
  break;
 case 132:
  scsicmd->result = DID_ABORT << 16 | ABORT << 8;
  break;
 case 133:
  scsicmd->result = DID_NO_CONNECT << 16 | COMMAND_COMPLETE << 8;
  break;
 case 128:

  scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8;
  break;
 case 129:
 default:
  scsicmd->result = DID_ERROR << 16 | COMMAND_COMPLETE << 8;
  break;
 }
}
