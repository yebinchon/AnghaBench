
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ucsi_ccg {int cmd_resp; int flags; struct device* dev; } ;
struct device {int dummy; } ;
struct ccg_cmd {int reg; int delay; int len; int data; } ;


 int DEV_CMD_PENDING ;

 int EIO ;
 int ccg_process_response (struct ucsi_ccg*) ;
 int ccg_read_response (struct ucsi_ccg*) ;
 int ccg_write (struct ucsi_ccg*,int,int *,int ) ;
 int clear_bit (int ,int *) ;
 int dev_err (struct device*,char*) ;
 int msleep (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ccg_send_command(struct ucsi_ccg *uc, struct ccg_cmd *cmd)
{
 struct device *dev = uc->dev;
 int ret;

 switch (cmd->reg & 0xF000) {
 case 128:
  set_bit(DEV_CMD_PENDING, &uc->flags);
  break;
 default:
  dev_err(dev, "invalid cmd register\n");
  break;
 }

 ret = ccg_write(uc, cmd->reg, (u8 *)&cmd->data, cmd->len);
 if (ret < 0)
  return ret;

 msleep(cmd->delay);

 ret = ccg_read_response(uc);
 if (ret < 0) {
  dev_err(dev, "response read error\n");
  switch (cmd->reg & 0xF000) {
  case 128:
   clear_bit(DEV_CMD_PENDING, &uc->flags);
   break;
  default:
   dev_err(dev, "invalid cmd register\n");
   break;
  }
  return -EIO;
 }
 ccg_process_response(uc);

 return uc->cmd_resp;
}
