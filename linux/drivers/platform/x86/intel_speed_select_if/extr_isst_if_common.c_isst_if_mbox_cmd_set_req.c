
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct isst_if_mbox_cmd {scalar_t__ command; scalar_t__ sub_command; scalar_t__ parameter; } ;
struct TYPE_3__ {scalar_t__ cmd; scalar_t__ sub_cmd; scalar_t__ param; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* isst_cmd_set_reqs ;

bool isst_if_mbox_cmd_set_req(struct isst_if_mbox_cmd *cmd)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(isst_cmd_set_reqs); ++i) {
  if (cmd->command == isst_cmd_set_reqs[i].cmd &&
      cmd->sub_command == isst_cmd_set_reqs[i].sub_cmd &&
      cmd->parameter == isst_cmd_set_reqs[i].param) {
   return 1;
  }
 }

 return 0;
}
