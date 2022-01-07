
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int dev; int lock; } ;
struct ccg_cmd {int len; int delay; int data; int reg; } ;


 int CCGX_RAB_ENTER_FLASHING ;
 int CMD_SUCCESS ;
 int FLASH_ENTER_SIG ;
 int ccg_send_command (struct ucsi_ccg*,struct ccg_cmd*) ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ccg_cmd_enter_flashing(struct ucsi_ccg *uc)
{
 struct ccg_cmd cmd;
 int ret;

 cmd.reg = CCGX_RAB_ENTER_FLASHING;
 cmd.data = FLASH_ENTER_SIG;
 cmd.len = 1;
 cmd.delay = 50;

 mutex_lock(&uc->lock);

 ret = ccg_send_command(uc, &cmd);

 mutex_unlock(&uc->lock);

 if (ret != CMD_SUCCESS) {
  dev_err(uc->dev, "enter flashing failed ret=%d\n", ret);
  return ret;
 }

 return 0;
}
