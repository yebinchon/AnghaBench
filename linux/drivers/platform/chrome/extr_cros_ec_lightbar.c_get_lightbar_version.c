
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int flags; int num; } ;
struct ec_response_lightbar {TYPE_1__ version; } ;
struct ec_params_lightbar {int cmd; } ;
struct cros_ec_dev {int ec_dev; } ;
struct cros_ec_command {int result; scalar_t__ data; } ;




 int LIGHTBAR_CMD_VERSION ;
 struct cros_ec_command* alloc_lightbar_cmd_msg (struct cros_ec_dev*) ;
 int cros_ec_cmd_xfer (int ,struct cros_ec_command*) ;
 int kfree (struct cros_ec_command*) ;

__attribute__((used)) static int get_lightbar_version(struct cros_ec_dev *ec,
    uint32_t *ver_ptr, uint32_t *flg_ptr)
{
 struct ec_params_lightbar *param;
 struct ec_response_lightbar *resp;
 struct cros_ec_command *msg;
 int ret;

 msg = alloc_lightbar_cmd_msg(ec);
 if (!msg)
  return 0;

 param = (struct ec_params_lightbar *)msg->data;
 param->cmd = LIGHTBAR_CMD_VERSION;
 ret = cros_ec_cmd_xfer(ec->ec_dev, msg);
 if (ret < 0) {
  ret = 0;
  goto exit;
 }

 switch (msg->result) {
 case 129:

  if (ver_ptr)
   *ver_ptr = 0;
  if (flg_ptr)
   *flg_ptr = 0;
  ret = 1;
  goto exit;

 case 128:
  resp = (struct ec_response_lightbar *)msg->data;


  if (ver_ptr)
   *ver_ptr = resp->version.num;
  if (flg_ptr)
   *flg_ptr = resp->version.flags;
  ret = 1;
  goto exit;
 }


 ret = 0;
exit:
 kfree(msg);
 return ret;
}
