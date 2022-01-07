
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct ucsi_ccg {int dev; int lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct ccg_cmd {int len; int delay; int reg; int data; } ;


 int CCG4_ROW_SIZE ;
 int CCGX_RAB_FLASH_ROW_RW ;
 int CMD_SUCCESS ;
 int EIO ;
 scalar_t__ FLASH_FWCT_SIG_WR_CMD ;
 scalar_t__ FLASH_SIG ;
 int REG_FLASH_RW_MEM ;
 int ccg_send_command (struct ucsi_ccg*,struct ccg_cmd*) ;
 int dev_err (int ,char*,int) ;
 int i2c_master_send (struct i2c_client*,scalar_t__*,int) ;
 int memcpy (scalar_t__*,void const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_unaligned_le16 (int,scalar_t__*) ;

__attribute__((used)) static int
ccg_cmd_write_flash_row(struct ucsi_ccg *uc, u16 row,
   const void *data, u8 fcmd)
{
 struct i2c_client *client = uc->client;
 struct ccg_cmd cmd;
 u8 buf[CCG4_ROW_SIZE + 2];
 u8 *p;
 int ret;


 put_unaligned_le16(REG_FLASH_RW_MEM, buf);

 memcpy(buf + 2, data, CCG4_ROW_SIZE);

 mutex_lock(&uc->lock);

 ret = i2c_master_send(client, buf, CCG4_ROW_SIZE + 2);
 if (ret != CCG4_ROW_SIZE + 2) {
  dev_err(uc->dev, "REG_FLASH_RW_MEM write fail %d\n", ret);
  mutex_unlock(&uc->lock);
  return ret < 0 ? ret : -EIO;
 }



 p = (u8 *)&cmd.data;
 cmd.reg = CCGX_RAB_FLASH_ROW_RW;
 p[0] = FLASH_SIG;
 p[1] = fcmd;
 put_unaligned_le16(row, &p[2]);
 cmd.len = 4;
 cmd.delay = 50;
 if (fcmd == FLASH_FWCT_SIG_WR_CMD)
  cmd.delay += 400;
 if (row == 510)
  cmd.delay += 220;
 ret = ccg_send_command(uc, &cmd);

 mutex_unlock(&uc->lock);

 if (ret != CMD_SUCCESS) {
  dev_err(uc->dev, "write flash row failed ret=%d\n", ret);
  return ret;
 }

 return 0;
}
