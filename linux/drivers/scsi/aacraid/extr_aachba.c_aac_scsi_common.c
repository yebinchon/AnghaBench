
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int sc_data_direction; int cmd_len; TYPE_2__* request; TYPE_1__* device; } ;
struct fib {int dummy; } ;
struct aac_srb {void* cdb_size; scalar_t__ retry_limit; void* timeout; void* flags; void* lun; void* id; void* channel; void* function; } ;
struct TYPE_4__ {int timeout; } ;
struct TYPE_3__ {int lun; } ;






 int HZ ;
 int SRBF_ExecuteScsi ;
 int SRB_DataIn ;
 int SRB_DataOut ;
 int SRB_NoDataXfer ;
 int aac_fib_init (struct fib*) ;
 int aac_logical_to_phys (int ) ;
 void* cpu_to_le32 (int) ;
 scalar_t__ fib_data (struct fib*) ;
 int scmd_channel (struct scsi_cmnd*) ;
 int scmd_id (struct scsi_cmnd*) ;

__attribute__((used)) static struct aac_srb * aac_scsi_common(struct fib * fib, struct scsi_cmnd * cmd)
{
 struct aac_srb * srbcmd;
 u32 flag;
 u32 timeout;

 aac_fib_init(fib);
 switch(cmd->sc_data_direction){
 case 128:
  flag = SRB_DataOut;
  break;
 case 131:
  flag = SRB_DataIn | SRB_DataOut;
  break;
 case 130:
  flag = SRB_DataIn;
  break;
 case 129:
 default:
  flag = SRB_NoDataXfer;
  break;
 }

 srbcmd = (struct aac_srb*) fib_data(fib);
 srbcmd->function = cpu_to_le32(SRBF_ExecuteScsi);
 srbcmd->channel = cpu_to_le32(aac_logical_to_phys(scmd_channel(cmd)));
 srbcmd->id = cpu_to_le32(scmd_id(cmd));
 srbcmd->lun = cpu_to_le32(cmd->device->lun);
 srbcmd->flags = cpu_to_le32(flag);
 timeout = cmd->request->timeout/HZ;
 if (timeout == 0)
  timeout = 1;
 srbcmd->timeout = cpu_to_le32(timeout);
 srbcmd->retry_limit = 0;
 srbcmd->cdb_size = cpu_to_le32(cmd->cmd_len);
 return srbcmd;
}
