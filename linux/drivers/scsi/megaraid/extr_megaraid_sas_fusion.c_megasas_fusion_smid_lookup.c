
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct megasas_instance {int max_scsi_cmds; struct fusion_context* ctrl_context; } ;
struct megasas_cmd_fusion {int index; struct scsi_cmnd* scmd; } ;
struct fusion_context {struct megasas_cmd_fusion** cmd_list; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int KERN_NOTICE ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int) ;

__attribute__((used)) static u16 megasas_fusion_smid_lookup(struct scsi_cmnd *scmd)
{
 int i, ret = 0;
 struct megasas_instance *instance;
 struct megasas_cmd_fusion *cmd_fusion;
 struct fusion_context *fusion;

 instance = (struct megasas_instance *)scmd->device->host->hostdata;

 fusion = instance->ctrl_context;

 for (i = 0; i < instance->max_scsi_cmds; i++) {
  cmd_fusion = fusion->cmd_list[i];
  if (cmd_fusion->scmd && (cmd_fusion->scmd == scmd)) {
   scmd_printk(KERN_NOTICE, scmd, "Abort request is for"
    " SMID: %d\n", cmd_fusion->index);
   ret = cmd_fusion->index;
   break;
  }
 }

 return ret;
}
