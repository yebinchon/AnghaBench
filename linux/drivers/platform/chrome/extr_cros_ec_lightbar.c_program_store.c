
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int data; } ;
struct ec_params_lightbar {TYPE_1__ set_program; int cmd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_dev {TYPE_2__* ec_dev; } ;
struct cros_ec_command {size_t outsize; scalar_t__ result; scalar_t__ data; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ max_request; } ;


 int EC_LB_PROG_LEN ;
 scalar_t__ EC_RES_SUCCESS ;
 int EINVAL ;
 int ENOMEM ;
 int LIGHTBAR_CMD_SET_PROGRAM ;
 struct cros_ec_command* alloc_lightbar_cmd_msg (struct cros_ec_dev*) ;
 int cros_ec_cmd_xfer (TYPE_2__*,struct cros_ec_command*) ;
 int dev_err (struct device*,char*,unsigned int,int) ;
 int dev_info (struct device*,char*,size_t) ;
 int kfree (struct cros_ec_command*) ;
 int lb_throttle () ;
 int memcpy (int ,char const*,size_t) ;
 int min (int ,scalar_t__) ;
 struct cros_ec_dev* to_cros_ec_dev (struct device*) ;

__attribute__((used)) static ssize_t program_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 int extra_bytes, max_size, ret;
 struct ec_params_lightbar *param;
 struct cros_ec_command *msg;
 struct cros_ec_dev *ec = to_cros_ec_dev(dev);
 extra_bytes = sizeof(*param) - sizeof(param->set_program.data);
 max_size = min(EC_LB_PROG_LEN, ec->ec_dev->max_request - extra_bytes);
 if (count > max_size) {
  dev_err(dev, "Program is %u bytes, too long to send (max: %u)",
   (unsigned int)count, max_size);

  return -EINVAL;
 }

 msg = alloc_lightbar_cmd_msg(ec);
 if (!msg)
  return -ENOMEM;

 ret = lb_throttle();
 if (ret)
  goto exit;

 dev_info(dev, "Copying %zu byte program to EC", count);

 param = (struct ec_params_lightbar *)msg->data;
 param->cmd = LIGHTBAR_CMD_SET_PROGRAM;

 param->set_program.size = count;
 memcpy(param->set_program.data, buf, count);






 msg->outsize = count + extra_bytes;

 ret = cros_ec_cmd_xfer(ec->ec_dev, msg);
 if (ret < 0)
  goto exit;
 if (msg->result != EC_RES_SUCCESS) {
  ret = -EINVAL;
  goto exit;
 }

 ret = count;
exit:
 kfree(msg);

 return ret;
}
