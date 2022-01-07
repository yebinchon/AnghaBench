
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ec_response_motion_sense {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct ec_params_motion_sense {TYPE_1__ kb_wake_angle; int cmd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_dev {int ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int version; int outsize; int insize; scalar_t__ command; scalar_t__ data; } ;
typedef int ssize_t ;


 scalar_t__ EC_CMD_MOTION_SENSE_CMD ;
 scalar_t__ EC_HOST_PARAM_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MOTIONSENSE_CMD_KB_WAKE_ANGLE ;
 int cros_ec_cmd_xfer_status (int ,struct cros_ec_command*) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kmalloc (scalar_t__,int ) ;
 int kstrtou16 (char const*,int ,int *) ;
 struct cros_ec_dev* to_cros_ec_dev (struct device*) ;

__attribute__((used)) static ssize_t kb_wake_angle_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct cros_ec_dev *ec = to_cros_ec_dev(dev);
 struct ec_params_motion_sense *param;
 struct cros_ec_command *msg;
 u16 angle;
 int ret;

 ret = kstrtou16(buf, 0, &angle);
 if (ret)
  return ret;

 msg = kmalloc(sizeof(*msg) + EC_HOST_PARAM_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 param = (struct ec_params_motion_sense *)msg->data;
 msg->command = EC_CMD_MOTION_SENSE_CMD + ec->cmd_offset;
 msg->version = 2;
 param->cmd = MOTIONSENSE_CMD_KB_WAKE_ANGLE;
 param->kb_wake_angle.data = angle;
 msg->outsize = sizeof(*param);
 msg->insize = sizeof(struct ec_response_motion_sense);

 ret = cros_ec_cmd_xfer_status(ec->ec_dev, msg);
 kfree(msg);
 if (ret < 0)
  return ret;
 return count;
}
