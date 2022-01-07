
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct sas_task {TYPE_2__ ssp_task; } ;
struct TYPE_3__ {scalar_t__* cmnd; } ;


 scalar_t__ READ_10 ;
 scalar_t__ WRITE_10 ;
 scalar_t__ WRITE_VERIFY ;

__attribute__((used)) static int check_enc_sas_cmd(struct sas_task *task)
{
 u8 cmd = task->ssp_task.cmd->cmnd[0];

 if (cmd == READ_10 || cmd == WRITE_10 || cmd == WRITE_VERIFY)
  return 1;
 else
  return 0;
}
