
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;


 int target_execute_cmd (struct se_cmd*) ;

__attribute__((used)) static int vhost_scsi_write_pending(struct se_cmd *se_cmd)
{

 target_execute_cmd(se_cmd);
 return 0;
}
