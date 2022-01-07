
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ec_response_get_cmd_versions {int version_mask; } ;
struct ec_params_get_cmd_versions {int cmd; } ;
struct cros_ec_device {int dummy; } ;
struct cros_ec_command {int insize; int outsize; scalar_t__ data; int command; scalar_t__ version; } ;


 int EC_CMD_GET_CMD_VERSIONS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kmalloc (scalar_t__,int ) ;
 scalar_t__ max (int,int) ;
 int send_command (struct cros_ec_device*,struct cros_ec_command*) ;

__attribute__((used)) static int cros_ec_get_host_command_version_mask(struct cros_ec_device *ec_dev,
 u16 cmd, u32 *mask)
{
 struct ec_params_get_cmd_versions *pver;
 struct ec_response_get_cmd_versions *rver;
 struct cros_ec_command *msg;
 int ret;

 msg = kmalloc(sizeof(*msg) + max(sizeof(*rver), sizeof(*pver)),
        GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 msg->version = 0;
 msg->command = EC_CMD_GET_CMD_VERSIONS;
 msg->insize = sizeof(*rver);
 msg->outsize = sizeof(*pver);

 pver = (struct ec_params_get_cmd_versions *)msg->data;
 pver->cmd = cmd;

 ret = send_command(ec_dev, msg);
 if (ret > 0) {
  rver = (struct ec_response_get_cmd_versions *)msg->data;
  *mask = rver->version_mask;
 }

 kfree(msg);

 return ret;
}
