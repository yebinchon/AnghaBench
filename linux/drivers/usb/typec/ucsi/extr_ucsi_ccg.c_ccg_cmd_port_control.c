
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int port_num; int dev; int lock; } ;
struct ccg_cmd {int data; int len; int delay; int reg; } ;


 int CCGX_RAB_PDPORT_ENABLE ;
 int CMD_SUCCESS ;
 int PDPORT_1 ;
 int PDPORT_2 ;
 int ccg_send_command (struct ucsi_ccg*,struct ccg_cmd*) ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ccg_cmd_port_control(struct ucsi_ccg *uc, bool enable)
{
 struct ccg_cmd cmd;
 int ret;

 cmd.reg = CCGX_RAB_PDPORT_ENABLE;
 if (enable)
  cmd.data = (uc->port_num == 1) ?
       PDPORT_1 : (PDPORT_1 | PDPORT_2);
 else
  cmd.data = 0x0;
 cmd.len = 1;
 cmd.delay = 10;

 mutex_lock(&uc->lock);

 ret = ccg_send_command(uc, &cmd);

 mutex_unlock(&uc->lock);

 if (ret != CMD_SUCCESS) {
  dev_err(uc->dev, "port control failed ret=%d\n", ret);
  return ret;
 }
 return 0;
}
