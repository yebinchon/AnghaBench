
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_get_protocol_info {int dummy; } ;
struct cros_ec_device {int dev; int pkt_xfer; } ;
struct cros_ec_command {int command; int insize; scalar_t__ result; } ;


 int EC_CMD_GET_PROTOCOL_INFO ;
 int EC_CMD_PASSTHRU_OFFSET (int) ;
 scalar_t__ EC_RES_INVALID_COMMAND ;
 scalar_t__ EC_RES_SUCCESS ;
 int ENODEV ;
 int EPROTONOSUPPORT ;
 int dev_dbg (int ,char*,int,int) ;
 int memset (struct cros_ec_command*,int ,int) ;
 int send_command (struct cros_ec_device*,struct cros_ec_command*) ;

__attribute__((used)) static int cros_ec_host_command_proto_query(struct cros_ec_device *ec_dev,
         int devidx,
         struct cros_ec_command *msg)
{






 int ret;

 if (!ec_dev->pkt_xfer)
  return -EPROTONOSUPPORT;

 memset(msg, 0, sizeof(*msg));
 msg->command = EC_CMD_PASSTHRU_OFFSET(devidx) | EC_CMD_GET_PROTOCOL_INFO;
 msg->insize = sizeof(struct ec_response_get_protocol_info);

 ret = send_command(ec_dev, msg);

 if (ret < 0) {
  dev_dbg(ec_dev->dev,
   "failed to check for EC[%d] protocol version: %d\n",
   devidx, ret);
  return ret;
 }

 if (devidx > 0 && msg->result == EC_RES_INVALID_COMMAND)
  return -ENODEV;
 else if (msg->result != EC_RES_SUCCESS)
  return msg->result;

 return 0;
}
