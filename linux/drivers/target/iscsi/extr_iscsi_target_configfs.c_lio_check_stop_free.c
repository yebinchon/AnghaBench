
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;


 int target_put_sess_cmd (struct se_cmd*) ;

__attribute__((used)) static int lio_check_stop_free(struct se_cmd *se_cmd)
{
 return target_put_sess_cmd(se_cmd);
}
