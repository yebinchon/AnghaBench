
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pmcraid_cmd {scalar_t__ release; int wait_for_completion; scalar_t__ completion_req; TYPE_3__* ioa_cb; } ;
struct TYPE_5__ {int ioasc; } ;
struct TYPE_4__ {int * cdb; } ;
struct TYPE_6__ {TYPE_2__ ioasa; TYPE_1__ ioarcb; } ;


 int complete (int *) ;
 int le32_to_cpu (int ) ;
 int pmcraid_info (char*,int ,int ) ;
 int pmcraid_return_cmd (struct pmcraid_cmd*) ;

__attribute__((used)) static void pmcraid_internal_done(struct pmcraid_cmd *cmd)
{
 pmcraid_info("response internal cmd CDB[0] = %x ioasc = %x\n",
       cmd->ioa_cb->ioarcb.cdb[0],
       le32_to_cpu(cmd->ioa_cb->ioasa.ioasc));






 if (cmd->completion_req) {
  cmd->completion_req = 0;
  complete(&cmd->wait_for_completion);
 }





 if (cmd->release) {
  cmd->release = 0;
  pmcraid_return_cmd(cmd);
 }
}
