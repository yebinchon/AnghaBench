
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ucsi_ccg {int lock; int flags; } ;
struct ccg_cmd {int len; int delay; int reg; int data; } ;


 int CCGX_RAB_RESET_REQ ;
 int CMD_RESET_DEV ;
 int RESET_COMPLETE ;
 int RESET_PENDING ;
 int RESET_SIG ;
 int ccg_send_command (struct ucsi_ccg*,struct ccg_cmd*) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ccg_cmd_reset(struct ucsi_ccg *uc)
{
 struct ccg_cmd cmd;
 u8 *p;
 int ret;

 p = (u8 *)&cmd.data;
 cmd.reg = CCGX_RAB_RESET_REQ;
 p[0] = RESET_SIG;
 p[1] = CMD_RESET_DEV;
 cmd.len = 2;
 cmd.delay = 5000;

 mutex_lock(&uc->lock);

 set_bit(RESET_PENDING, &uc->flags);

 ret = ccg_send_command(uc, &cmd);
 if (ret != RESET_COMPLETE)
  goto err_clear_flag;

 ret = 0;

err_clear_flag:
 clear_bit(RESET_PENDING, &uc->flags);

 mutex_unlock(&uc->lock);

 return ret;
}
