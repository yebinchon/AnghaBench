
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_get_comms_status {int flags; } ;
struct cros_ec_device {int proto_version; int (* pkt_xfer ) (struct cros_ec_device*,struct cros_ec_command*) ;int (* cmd_xfer ) (struct cros_ec_device*,struct cros_ec_command*) ;int dev; } ;
struct cros_ec_command {scalar_t__ result; int insize; scalar_t__ data; scalar_t__ outsize; int command; scalar_t__ version; } ;


 int EAGAIN ;
 int EC_CMD_GET_COMMS_STATUS ;
 int EC_COMMAND_RETRIES ;
 int EC_COMMS_STATUS_PROCESSING ;
 scalar_t__ EC_RES_IN_PROGRESS ;
 scalar_t__ EC_RES_SUCCESS ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err_once (int ,char*) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kmalloc (int,int ) ;
 int stub1 (struct cros_ec_device*,struct cros_ec_command*) ;
 int stub2 (struct cros_ec_device*,struct cros_ec_command*) ;
 int trace_cros_ec_cmd (struct cros_ec_command*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int send_command(struct cros_ec_device *ec_dev,
   struct cros_ec_command *msg)
{
 int ret;
 int (*xfer_fxn)(struct cros_ec_device *ec, struct cros_ec_command *msg);

 trace_cros_ec_cmd(msg);

 if (ec_dev->proto_version > 2)
  xfer_fxn = ec_dev->pkt_xfer;
 else
  xfer_fxn = ec_dev->cmd_xfer;

 if (!xfer_fxn) {





  dev_err_once(ec_dev->dev,
        "missing EC transfer API, cannot send command\n");
  return -EIO;
 }

 ret = (*xfer_fxn)(ec_dev, msg);
 if (msg->result == EC_RES_IN_PROGRESS) {
  int i;
  struct cros_ec_command *status_msg;
  struct ec_response_get_comms_status *status;

  status_msg = kmalloc(sizeof(*status_msg) + sizeof(*status),
         GFP_KERNEL);
  if (!status_msg)
   return -ENOMEM;

  status_msg->version = 0;
  status_msg->command = EC_CMD_GET_COMMS_STATUS;
  status_msg->insize = sizeof(*status);
  status_msg->outsize = 0;





  for (i = 0; i < EC_COMMAND_RETRIES; i++) {
   usleep_range(10000, 11000);

   ret = (*xfer_fxn)(ec_dev, status_msg);
   if (ret == -EAGAIN)
    continue;
   if (ret < 0)
    break;

   msg->result = status_msg->result;
   if (status_msg->result != EC_RES_SUCCESS)
    break;

   status = (struct ec_response_get_comms_status *)
     status_msg->data;
   if (!(status->flags & EC_COMMS_STATUS_PROCESSING))
    break;
  }

  kfree(status_msg);
 }

 return ret;
}
