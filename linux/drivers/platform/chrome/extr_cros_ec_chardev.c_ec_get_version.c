
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_get_version {int current_image; char* version_string_ro; char* version_string_rw; } ;
struct cros_ec_dev {int ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int insize; int result; scalar_t__ data; scalar_t__ command; } ;


 int ARRAY_SIZE (char const* const*) ;
 char* CROS_EC_DEV_VERSION ;
 scalar_t__ EC_CMD_GET_VERSION ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cros_ec_cmd_xfer_status (int ,struct cros_ec_command*) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kzalloc (int,int ) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int ec_get_version(struct cros_ec_dev *ec, char *str, int maxlen)
{
 static const char * const current_image_name[] = {
  "unknown", "read-only", "read-write", "invalid",
 };
 struct ec_response_get_version *resp;
 struct cros_ec_command *msg;
 int ret;

 msg = kzalloc(sizeof(*msg) + sizeof(*resp), GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 msg->command = EC_CMD_GET_VERSION + ec->cmd_offset;
 msg->insize = sizeof(*resp);

 ret = cros_ec_cmd_xfer_status(ec->ec_dev, msg);
 if (ret < 0) {
  snprintf(str, maxlen,
    "Unknown EC version, returned error: %d\n",
    msg->result);
  goto exit;
 }

 resp = (struct ec_response_get_version *)msg->data;
 if (resp->current_image >= ARRAY_SIZE(current_image_name))
  resp->current_image = 3;

 snprintf(str, maxlen, "%s\n%s\n%s\n%s\n", CROS_EC_DEV_VERSION,
   resp->version_string_ro, resp->version_string_rw,
   current_image_name[resp->current_image]);

 ret = 0;
exit:
 kfree(msg);
 return ret;
}
