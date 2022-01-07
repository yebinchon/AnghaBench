
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; } ;
struct ec_response_lightbar {TYPE_1__ get_seq; } ;
struct ec_params_lightbar {int cmd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_dev {int ec_dev; } ;
struct cros_ec_command {scalar_t__ result; scalar_t__ data; } ;
typedef int ssize_t ;


 scalar_t__ ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ EC_RES_SUCCESS ;
 int ENOMEM ;
 int LIGHTBAR_CMD_GET_SEQ ;
 int PAGE_SIZE ;
 struct cros_ec_command* alloc_lightbar_cmd_msg (struct cros_ec_dev*) ;
 int cros_ec_cmd_xfer (int ,struct cros_ec_command*) ;
 int kfree (struct cros_ec_command*) ;
 int lb_throttle () ;
 int scnprintf (char*,int ,char*,scalar_t__) ;
 scalar_t__* seqname ;
 struct cros_ec_dev* to_cros_ec_dev (struct device*) ;

__attribute__((used)) static ssize_t sequence_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct ec_params_lightbar *param;
 struct ec_response_lightbar *resp;
 struct cros_ec_command *msg;
 int ret;
 struct cros_ec_dev *ec = to_cros_ec_dev(dev);

 msg = alloc_lightbar_cmd_msg(ec);
 if (!msg)
  return -ENOMEM;

 param = (struct ec_params_lightbar *)msg->data;
 param->cmd = LIGHTBAR_CMD_GET_SEQ;
 ret = lb_throttle();
 if (ret)
  goto exit;

 ret = cros_ec_cmd_xfer(ec->ec_dev, msg);
 if (ret < 0)
  goto exit;

 if (msg->result != EC_RES_SUCCESS) {
  ret = scnprintf(buf, PAGE_SIZE,
    "ERROR: EC returned %d\n", msg->result);
  goto exit;
 }

 resp = (struct ec_response_lightbar *)msg->data;
 if (resp->get_seq.num >= ARRAY_SIZE(seqname))
  ret = scnprintf(buf, PAGE_SIZE, "%d\n", resp->get_seq.num);
 else
  ret = scnprintf(buf, PAGE_SIZE, "%s\n",
    seqname[resp->get_seq.num]);

exit:
 kfree(msg);
 return ret;
}
