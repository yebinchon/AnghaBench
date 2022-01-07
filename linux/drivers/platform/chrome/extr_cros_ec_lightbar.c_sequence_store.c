
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num; } ;
struct ec_params_lightbar {TYPE_1__ seq; int cmd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_dev {int ec_dev; } ;
struct cros_ec_command {scalar_t__ result; scalar_t__ data; } ;
typedef int ssize_t ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ EC_RES_SUCCESS ;
 int EINVAL ;
 int ENOMEM ;
 int LIGHTBAR_CMD_SEQ ;
 struct cros_ec_command* alloc_lightbar_cmd_msg (struct cros_ec_dev*) ;
 int cros_ec_cmd_xfer (int ,struct cros_ec_command*) ;
 int isalnum (char const) ;
 int kfree (struct cros_ec_command*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int lb_throttle () ;
 int * seqname ;
 int strncasecmp (int ,char const*,int) ;
 struct cros_ec_dev* to_cros_ec_dev (struct device*) ;

__attribute__((used)) static ssize_t sequence_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ec_params_lightbar *param;
 struct cros_ec_command *msg;
 unsigned int num;
 int ret, len;
 struct cros_ec_dev *ec = to_cros_ec_dev(dev);

 for (len = 0; len < count; len++)
  if (!isalnum(buf[len]))
   break;

 for (num = 0; num < ARRAY_SIZE(seqname); num++)
  if (!strncasecmp(seqname[num], buf, len))
   break;

 if (num >= ARRAY_SIZE(seqname)) {
  ret = kstrtouint(buf, 0, &num);
  if (ret)
   return ret;
 }

 msg = alloc_lightbar_cmd_msg(ec);
 if (!msg)
  return -ENOMEM;

 param = (struct ec_params_lightbar *)msg->data;
 param->cmd = LIGHTBAR_CMD_SEQ;
 param->seq.num = num;
 ret = lb_throttle();
 if (ret)
  goto exit;

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
