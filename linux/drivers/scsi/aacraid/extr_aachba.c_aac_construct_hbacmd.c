
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct scsi_cmnd {int sc_data_direction; int cmd_len; int cmnd; TYPE_2__* device; } ;
struct fib {scalar_t__ hw_error_pa; scalar_t__ hw_fib_va; } ;
struct aac_hba_cmd_req {int byte1; void* error_length; void* error_ptr_lo; void* error_ptr_hi; void* data_length; int cdb; int it_nexus; void** lun; } ;
struct aac_dev {TYPE_3__** hba_map; } ;
struct TYPE_6__ {int rmw_nexus; } ;
struct TYPE_5__ {int lun; TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;






 int FW_ERROR_BUFFER_SIZE ;
 int aac_logical_to_phys (int ) ;
 void* cpu_to_le32 (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct aac_hba_cmd_req*,int ,int) ;
 int scmd_channel (struct scsi_cmnd*) ;
 int scmd_id (struct scsi_cmnd*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;

__attribute__((used)) static struct aac_hba_cmd_req *aac_construct_hbacmd(struct fib *fib,
       struct scsi_cmnd *cmd)
{
 struct aac_hba_cmd_req *hbacmd;
 struct aac_dev *dev;
 int bus, target;
 u64 address;

 dev = (struct aac_dev *)cmd->device->host->hostdata;

 hbacmd = (struct aac_hba_cmd_req *)fib->hw_fib_va;
 memset(hbacmd, 0, 96);

 switch (cmd->sc_data_direction) {
 case 128:
  hbacmd->byte1 = 2;
  break;
 case 130:
 case 131:
  hbacmd->byte1 = 1;
  break;
 case 129:
 default:
  break;
 }
 hbacmd->lun[1] = cpu_to_le32(cmd->device->lun);

 bus = aac_logical_to_phys(scmd_channel(cmd));
 target = scmd_id(cmd);
 hbacmd->it_nexus = dev->hba_map[bus][target].rmw_nexus;





 memcpy(hbacmd->cdb, cmd->cmnd, cmd->cmd_len);
 hbacmd->data_length = cpu_to_le32(scsi_bufflen(cmd));

 address = (u64)fib->hw_error_pa;
 hbacmd->error_ptr_hi = cpu_to_le32((u32)(address >> 32));
 hbacmd->error_ptr_lo = cpu_to_le32((u32)(address & 0xffffffff));
 hbacmd->error_length = cpu_to_le32(FW_ERROR_BUFFER_SIZE);

 return hbacmd;
}
