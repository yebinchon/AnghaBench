
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int lock; } ;
struct ccg_cmd {unsigned int data; int len; int delay; int reg; } ;


 int CCGX_RAB_VALIDATE_FW ;
 int CMD_SUCCESS ;
 int ccg_send_command (struct ucsi_ccg*,struct ccg_cmd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ccg_cmd_validate_fw(struct ucsi_ccg *uc, unsigned int fwid)
{
 struct ccg_cmd cmd;
 int ret;

 cmd.reg = CCGX_RAB_VALIDATE_FW;
 cmd.data = fwid;
 cmd.len = 1;
 cmd.delay = 500;

 mutex_lock(&uc->lock);

 ret = ccg_send_command(uc, &cmd);

 mutex_unlock(&uc->lock);

 if (ret != CMD_SUCCESS)
  return ret;

 return 0;
}
