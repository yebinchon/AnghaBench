
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int lock; int flags; } ;
struct ccg_cmd {int len; int delay; int data; int reg; } ;


 int CCGX_RAB_JUMP_TO_BOOT ;
 int RESET_COMPLETE ;
 int RESET_PENDING ;
 int TO_ALT_FW ;
 int TO_BOOT ;
 int ccg_send_command (struct ucsi_ccg*,struct ccg_cmd*) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ccg_cmd_jump_boot_mode(struct ucsi_ccg *uc, int bl_mode)
{
 struct ccg_cmd cmd;
 int ret;

 cmd.reg = CCGX_RAB_JUMP_TO_BOOT;

 if (bl_mode)
  cmd.data = TO_BOOT;
 else
  cmd.data = TO_ALT_FW;

 cmd.len = 1;
 cmd.delay = 100;

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
