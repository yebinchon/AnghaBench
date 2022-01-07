
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_msg {int flags; scalar_t__ len; scalar_t__ page; } ;
struct sdw_cdns {int dev; } ;


 int CDNS_MCP_CMD_READ ;
 int CDNS_MCP_CMD_WRITE ;
 int EINVAL ;


 int cdns_program_scp_addr (struct sdw_cdns*,struct sdw_msg*) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int cdns_prep_msg(struct sdw_cdns *cdns, struct sdw_msg *msg, int *cmd)
{
 int ret;

 if (msg->page) {
  ret = cdns_program_scp_addr(cdns, msg);
  if (ret) {
   msg->len = 0;
   return ret;
  }
 }

 switch (msg->flags) {
 case 129:
  *cmd = CDNS_MCP_CMD_READ;
  break;

 case 128:
  *cmd = CDNS_MCP_CMD_WRITE;
  break;

 default:
  dev_err(cdns->dev, "Invalid msg cmd: %d\n", msg->flags);
  return -EINVAL;
 }

 return 0;
}
