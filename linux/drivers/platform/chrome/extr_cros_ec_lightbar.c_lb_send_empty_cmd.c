
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ec_params_lightbar {int cmd; } ;
struct cros_ec_dev {int ec_dev; } ;
struct cros_ec_command {scalar_t__ result; scalar_t__ data; } ;


 scalar_t__ EC_RES_SUCCESS ;
 int EINVAL ;
 int ENOMEM ;
 struct cros_ec_command* alloc_lightbar_cmd_msg (struct cros_ec_dev*) ;
 int cros_ec_cmd_xfer (int ,struct cros_ec_command*) ;
 int kfree (struct cros_ec_command*) ;
 int lb_throttle () ;

__attribute__((used)) static int lb_send_empty_cmd(struct cros_ec_dev *ec, uint8_t cmd)
{
 struct ec_params_lightbar *param;
 struct cros_ec_command *msg;
 int ret;

 msg = alloc_lightbar_cmd_msg(ec);
 if (!msg)
  return -ENOMEM;

 param = (struct ec_params_lightbar *)msg->data;
 param->cmd = cmd;

 ret = lb_throttle();
 if (ret)
  goto error;

 ret = cros_ec_cmd_xfer(ec->ec_dev, msg);
 if (ret < 0)
  goto error;
 if (msg->result != EC_RES_SUCCESS) {
  ret = -EINVAL;
  goto error;
 }
 ret = 0;
error:
 kfree(msg);

 return ret;
}
