
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdw_msg {int dev_num; scalar_t__ flags; int* buf; int ssp_sync; scalar_t__ len; int addr; } ;
struct sdw_cdns {int msg_count; int dev; int tx_complete; } ;
typedef enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;


 int CDNS_MCP_CMD_BASE ;
 int CDNS_MCP_CMD_COMMAND ;
 int CDNS_MCP_CMD_DEV_ADDR ;
 int CDNS_MCP_CMD_REG_ADDR_L ;
 int CDNS_MCP_CMD_SSP_TAG ;
 scalar_t__ CDNS_MCP_CMD_WORD_LEN ;
 int CDNS_MCP_FIFOLEVEL ;
 int CDNS_TX_TIMEOUT ;
 int SDW_CMD_OK ;
 int SDW_CMD_TIMEOUT ;
 scalar_t__ SDW_MSG_FLAG_WRITE ;
 int SDW_REG_SHIFT (int ) ;
 int cdns_fill_msg_resp (struct sdw_cdns*,struct sdw_msg*,int,int) ;
 int cdns_writel (struct sdw_cdns*,int,int) ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static enum sdw_command_response
_cdns_xfer_msg(struct sdw_cdns *cdns, struct sdw_msg *msg, int cmd,
        int offset, int count, bool defer)
{
 unsigned long time;
 u32 base, i, data;
 u16 addr;


 if (cdns->msg_count != count) {
  cdns_writel(cdns, CDNS_MCP_FIFOLEVEL, count);
  cdns->msg_count = count;
 }

 base = CDNS_MCP_CMD_BASE;
 addr = msg->addr;

 for (i = 0; i < count; i++) {
  data = msg->dev_num << SDW_REG_SHIFT(CDNS_MCP_CMD_DEV_ADDR);
  data |= cmd << SDW_REG_SHIFT(CDNS_MCP_CMD_COMMAND);
  data |= addr++ << SDW_REG_SHIFT(CDNS_MCP_CMD_REG_ADDR_L);

  if (msg->flags == SDW_MSG_FLAG_WRITE)
   data |= msg->buf[i + offset];

  data |= msg->ssp_sync << SDW_REG_SHIFT(CDNS_MCP_CMD_SSP_TAG);
  cdns_writel(cdns, base, data);
  base += CDNS_MCP_CMD_WORD_LEN;
 }

 if (defer)
  return SDW_CMD_OK;


 time = wait_for_completion_timeout(&cdns->tx_complete,
        msecs_to_jiffies(CDNS_TX_TIMEOUT));
 if (!time) {
  dev_err(cdns->dev, "IO transfer timed out\n");
  msg->len = 0;
  return SDW_CMD_TIMEOUT;
 }

 return cdns_fill_msg_resp(cdns, msg, count, offset);
}
