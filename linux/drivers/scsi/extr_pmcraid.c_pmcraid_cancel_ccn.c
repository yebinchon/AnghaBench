
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pmcraid_cmd {TYPE_3__* ioa_cb; } ;
struct TYPE_5__ {int ioasc; } ;
struct TYPE_4__ {int * cdb; } ;
struct TYPE_6__ {TYPE_2__ ioasa; TYPE_1__ ioarcb; } ;


 int PMCRAID_HCAM_CODE_CONFIG_CHANGE ;
 int le32_to_cpu (int ) ;
 int pmcraid_cancel_hcam (struct pmcraid_cmd*,int ,int ) ;
 int pmcraid_info (char*,int ,int ) ;
 int pmcraid_ioa_shutdown ;
 int pmcraid_reinit_cmdblk (struct pmcraid_cmd*) ;

__attribute__((used)) static void pmcraid_cancel_ccn(struct pmcraid_cmd *cmd)
{
 pmcraid_info("response for Cancel LDN CDB[0] = %x ioasc = %x\n",
       cmd->ioa_cb->ioarcb.cdb[0],
       le32_to_cpu(cmd->ioa_cb->ioasa.ioasc));

 pmcraid_reinit_cmdblk(cmd);

 pmcraid_cancel_hcam(cmd,
       PMCRAID_HCAM_CODE_CONFIG_CHANGE,
       pmcraid_ioa_shutdown);
}
