
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; } ;
struct TYPE_3__ {int residual_data_length; int ioasc; } ;
struct TYPE_4__ {TYPE_1__ ioasa; } ;


 scalar_t__ _pmcraid_io_done (struct pmcraid_cmd*,int ,int ) ;
 int le32_to_cpu (int ) ;
 int pmcraid_return_cmd (struct pmcraid_cmd*) ;

__attribute__((used)) static void pmcraid_io_done(struct pmcraid_cmd *cmd)
{
 u32 ioasc = le32_to_cpu(cmd->ioa_cb->ioasa.ioasc);
 u32 reslen = le32_to_cpu(cmd->ioa_cb->ioasa.residual_data_length);

 if (_pmcraid_io_done(cmd, reslen, ioasc) == 0)
  pmcraid_return_cmd(cmd);
}
