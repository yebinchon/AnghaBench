
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_sess; } ;


 int target_free_tag (int ,struct se_cmd*) ;

__attribute__((used)) static void scsiback_release_cmd(struct se_cmd *se_cmd)
{
 target_free_tag(se_cmd->se_sess, se_cmd);
}
