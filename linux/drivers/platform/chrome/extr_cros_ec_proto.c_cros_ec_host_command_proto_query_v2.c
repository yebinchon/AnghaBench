
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_hello {int out_data; } ;
struct ec_params_hello {int in_data; } ;
struct cros_ec_device {int dev; } ;
struct cros_ec_command {int outsize; int insize; int result; scalar_t__ data; int command; scalar_t__ version; } ;


 int EBADMSG ;
 int EC_CMD_HELLO ;
 int EC_RES_SUCCESS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kmalloc (int,int ) ;
 int max (int,int) ;
 int send_command (struct cros_ec_device*,struct cros_ec_command*) ;

__attribute__((used)) static int cros_ec_host_command_proto_query_v2(struct cros_ec_device *ec_dev)
{
 struct cros_ec_command *msg;
 struct ec_params_hello *hello_params;
 struct ec_response_hello *hello_response;
 int ret;
 int len = max(sizeof(*hello_params), sizeof(*hello_response));

 msg = kmalloc(sizeof(*msg) + len, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 msg->version = 0;
 msg->command = EC_CMD_HELLO;
 hello_params = (struct ec_params_hello *)msg->data;
 msg->outsize = sizeof(*hello_params);
 hello_response = (struct ec_response_hello *)msg->data;
 msg->insize = sizeof(*hello_response);

 hello_params->in_data = 0xa0b0c0d0;

 ret = send_command(ec_dev, msg);

 if (ret < 0) {
  dev_dbg(ec_dev->dev,
   "EC failed to respond to v2 hello: %d\n",
   ret);
  goto exit;
 } else if (msg->result != EC_RES_SUCCESS) {
  dev_err(ec_dev->dev,
   "EC responded to v2 hello with error: %d\n",
   msg->result);
  ret = msg->result;
  goto exit;
 } else if (hello_response->out_data != 0xa1b2c3d4) {
  dev_err(ec_dev->dev,
   "EC responded to v2 hello with bad result: %u\n",
   hello_response->out_data);
  ret = -EBADMSG;
  goto exit;
 }

 ret = 0;

 exit:
 kfree(msg);
 return ret;
}
