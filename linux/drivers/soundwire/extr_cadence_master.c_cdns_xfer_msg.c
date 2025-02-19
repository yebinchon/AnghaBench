
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_msg {int len; } ;
struct sdw_cdns {int dummy; } ;
struct sdw_bus {int dummy; } ;
typedef enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;


 int CDNS_MCP_CMD_LEN ;
 int SDW_CMD_FAIL_OTHER ;
 int _cdns_xfer_msg (struct sdw_cdns*,struct sdw_msg*,int,int,int,int) ;
 struct sdw_cdns* bus_to_cdns (struct sdw_bus*) ;
 int cdns_prep_msg (struct sdw_cdns*,struct sdw_msg*,int*) ;

enum sdw_command_response
cdns_xfer_msg(struct sdw_bus *bus, struct sdw_msg *msg)
{
 struct sdw_cdns *cdns = bus_to_cdns(bus);
 int cmd = 0, ret, i;

 ret = cdns_prep_msg(cdns, msg, &cmd);
 if (ret)
  return SDW_CMD_FAIL_OTHER;

 for (i = 0; i < msg->len / CDNS_MCP_CMD_LEN; i++) {
  ret = _cdns_xfer_msg(cdns, msg, cmd, i * CDNS_MCP_CMD_LEN,
         CDNS_MCP_CMD_LEN, 0);
  if (ret < 0)
   goto exit;
 }

 if (!(msg->len % CDNS_MCP_CMD_LEN))
  goto exit;

 ret = _cdns_xfer_msg(cdns, msg, cmd, i * CDNS_MCP_CMD_LEN,
        msg->len % CDNS_MCP_CMD_LEN, 0);

exit:
 return ret;
}
