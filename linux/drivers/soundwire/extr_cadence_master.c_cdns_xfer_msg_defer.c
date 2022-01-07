
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_msg {int len; } ;
struct sdw_defer {int length; } ;
struct sdw_cdns {struct sdw_defer* defer; } ;
struct sdw_bus {int dummy; } ;
typedef enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;


 int ENOTSUPP ;
 int SDW_CMD_FAIL_OTHER ;
 int _cdns_xfer_msg (struct sdw_cdns*,struct sdw_msg*,int,int ,int,int) ;
 struct sdw_cdns* bus_to_cdns (struct sdw_bus*) ;
 int cdns_prep_msg (struct sdw_cdns*,struct sdw_msg*,int*) ;

enum sdw_command_response
cdns_xfer_msg_defer(struct sdw_bus *bus,
      struct sdw_msg *msg, struct sdw_defer *defer)
{
 struct sdw_cdns *cdns = bus_to_cdns(bus);
 int cmd = 0, ret;


 if (msg->len > 1)
  return -ENOTSUPP;

 ret = cdns_prep_msg(cdns, msg, &cmd);
 if (ret)
  return SDW_CMD_FAIL_OTHER;

 cdns->defer = defer;
 cdns->defer->length = msg->len;

 return _cdns_xfer_msg(cdns, msg, cmd, 0, msg->len, 1);
}
