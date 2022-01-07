
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;
typedef int sense_reason_t ;


 int GOOD ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static sense_reason_t
spc_emulate_testunitready(struct se_cmd *cmd)
{
 target_complete_cmd(cmd, GOOD);
 return 0;
}
