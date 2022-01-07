
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_device {scalar_t__ proto_version; scalar_t__ max_response; scalar_t__ max_request; scalar_t__ max_passthru; int lock; int dev; } ;
struct cros_ec_command {scalar_t__ insize; scalar_t__ command; scalar_t__ outsize; } ;


 scalar_t__ EC_CMD_PASSTHRU_OFFSET (int) ;
 scalar_t__ EC_PROTO_VERSION_UNKNOWN ;
 int EMSGSIZE ;
 int cros_ec_query_all (struct cros_ec_device*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_command (struct cros_ec_device*,struct cros_ec_command*) ;

int cros_ec_cmd_xfer(struct cros_ec_device *ec_dev,
       struct cros_ec_command *msg)
{
 int ret;

 mutex_lock(&ec_dev->lock);
 if (ec_dev->proto_version == EC_PROTO_VERSION_UNKNOWN) {
  ret = cros_ec_query_all(ec_dev);
  if (ret) {
   dev_err(ec_dev->dev,
    "EC version unknown and query failed; aborting command\n");
   mutex_unlock(&ec_dev->lock);
   return ret;
  }
 }

 if (msg->insize > ec_dev->max_response) {
  dev_dbg(ec_dev->dev, "clamping message receive buffer\n");
  msg->insize = ec_dev->max_response;
 }

 if (msg->command < EC_CMD_PASSTHRU_OFFSET(1)) {
  if (msg->outsize > ec_dev->max_request) {
   dev_err(ec_dev->dev,
    "request of size %u is too big (max: %u)\n",
    msg->outsize,
    ec_dev->max_request);
   mutex_unlock(&ec_dev->lock);
   return -EMSGSIZE;
  }
 } else {
  if (msg->outsize > ec_dev->max_passthru) {
   dev_err(ec_dev->dev,
    "passthru rq of size %u is too big (max: %u)\n",
    msg->outsize,
    ec_dev->max_passthru);
   mutex_unlock(&ec_dev->lock);
   return -EMSGSIZE;
  }
 }
 ret = send_command(ec_dev, msg);
 mutex_unlock(&ec_dev->lock);

 return ret;
}
