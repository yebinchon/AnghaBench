
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int led; unsigned int red; unsigned int green; unsigned int blue; } ;
struct ec_params_lightbar {TYPE_1__ set_rgb; int cmd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_dev {int ec_dev; } ;
struct cros_ec_command {scalar_t__ result; scalar_t__ data; } ;
typedef size_t ssize_t ;


 scalar_t__ EC_RES_SUCCESS ;
 size_t EINVAL ;
 size_t ENOMEM ;
 int LIGHTBAR_CMD_SET_RGB ;
 struct cros_ec_command* alloc_lightbar_cmd_msg (struct cros_ec_dev*) ;
 int cros_ec_cmd_xfer (int ,struct cros_ec_command*) ;
 scalar_t__ isspace (char const) ;
 int kfree (struct cros_ec_command*) ;
 int lb_throttle () ;
 int sscanf (char const*,char*,unsigned int*) ;
 struct cros_ec_dev* to_cros_ec_dev (struct device*) ;

__attribute__((used)) static ssize_t led_rgb_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct ec_params_lightbar *param;
 struct cros_ec_command *msg;
 struct cros_ec_dev *ec = to_cros_ec_dev(dev);
 unsigned int val[4];
 int ret, i = 0, j = 0, ok = 0;

 msg = alloc_lightbar_cmd_msg(ec);
 if (!msg)
  return -ENOMEM;

 do {

  while (*buf && isspace(*buf))
   buf++;

  if (!*buf)
   break;

  ret = sscanf(buf, "%i", &val[i++]);
  if (ret == 0)
   goto exit;

  if (i == 4) {
   param = (struct ec_params_lightbar *)msg->data;
   param->cmd = LIGHTBAR_CMD_SET_RGB;
   param->set_rgb.led = val[0];
   param->set_rgb.red = val[1];
   param->set_rgb.green = val[2];
   param->set_rgb.blue = val[3];




   if ((j++ % 4) == 0) {
    ret = lb_throttle();
    if (ret)
     goto exit;
   }

   ret = cros_ec_cmd_xfer(ec->ec_dev, msg);
   if (ret < 0)
    goto exit;

   if (msg->result != EC_RES_SUCCESS)
    goto exit;

   i = 0;
   ok = 1;
  }


  while (*buf && !isspace(*buf))
   buf++;

 } while (*buf);

exit:
 kfree(msg);
 return (ok && i == 0) ? count : -EINVAL;
}
