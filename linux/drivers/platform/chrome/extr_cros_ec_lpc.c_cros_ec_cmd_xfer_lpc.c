
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ec_lpc_host_args {scalar_t__ flags; scalar_t__ command_version; scalar_t__ data_size; scalar_t__ checksum; } ;
struct cros_ec_device {int dev; } ;
struct cros_ec_command {scalar_t__ outsize; scalar_t__ insize; scalar_t__ version; scalar_t__ command; scalar_t__* data; scalar_t__ result; } ;
typedef int args ;
struct TYPE_2__ {scalar_t__ (* read ) (int ,int,scalar_t__*) ;int (* write ) (int ,int,scalar_t__*) ;} ;


 int EBADMSG ;
 scalar_t__ EC_HOST_ARGS_FLAG_FROM_HOST ;
 int EC_LPC_ADDR_HOST_ARGS ;
 int EC_LPC_ADDR_HOST_CMD ;
 int EC_LPC_ADDR_HOST_DATA ;
 int EC_LPC_ADDR_HOST_PARAM ;
 scalar_t__ EC_PROTO2_MAX_PARAM_SIZE ;
 int EINVAL ;
 int EIO ;
 int ENOSPC ;
 int cros_ec_check_result (struct cros_ec_device*,struct cros_ec_command*) ;
 TYPE_1__ cros_ec_lpc_ops ;
 int dev_err (int ,char*,scalar_t__,scalar_t__) ;
 int dev_warn (int ,char*) ;
 scalar_t__ ec_response_timed_out () ;
 int stub1 (int ,int,scalar_t__*) ;
 int stub2 (int ,int,scalar_t__*) ;
 int stub3 (int ,int,scalar_t__*) ;
 scalar_t__ stub4 (int ,int,scalar_t__*) ;
 scalar_t__ stub5 (int ,int,scalar_t__*) ;
 scalar_t__ stub6 (int ,int,scalar_t__*) ;

__attribute__((used)) static int cros_ec_cmd_xfer_lpc(struct cros_ec_device *ec,
    struct cros_ec_command *msg)
{
 struct ec_lpc_host_args args;
 u8 sum;
 int ret = 0;

 if (msg->outsize > EC_PROTO2_MAX_PARAM_SIZE ||
     msg->insize > EC_PROTO2_MAX_PARAM_SIZE) {
  dev_err(ec->dev,
   "invalid buffer sizes (out %d, in %d)\n",
   msg->outsize, msg->insize);
  return -EINVAL;
 }


 args.flags = EC_HOST_ARGS_FLAG_FROM_HOST;
 args.command_version = msg->version;
 args.data_size = msg->outsize;


 sum = msg->command + args.flags + args.command_version + args.data_size;


 sum += cros_ec_lpc_ops.write(EC_LPC_ADDR_HOST_PARAM, msg->outsize,
         msg->data);


 args.checksum = sum;
 cros_ec_lpc_ops.write(EC_LPC_ADDR_HOST_ARGS, sizeof(args),
         (u8 *)&args);


 sum = msg->command;
 cros_ec_lpc_ops.write(EC_LPC_ADDR_HOST_CMD, 1, &sum);

 if (ec_response_timed_out()) {
  dev_warn(ec->dev, "EC responsed timed out\n");
  ret = -EIO;
  goto done;
 }


 msg->result = cros_ec_lpc_ops.read(EC_LPC_ADDR_HOST_DATA, 1, &sum);
 ret = cros_ec_check_result(ec, msg);
 if (ret)
  goto done;


 cros_ec_lpc_ops.read(EC_LPC_ADDR_HOST_ARGS, sizeof(args), (u8 *)&args);

 if (args.data_size > msg->insize) {
  dev_err(ec->dev,
   "packet too long (%d bytes, expected %d)",
   args.data_size, msg->insize);
  ret = -ENOSPC;
  goto done;
 }


 sum = msg->command + args.flags + args.command_version + args.data_size;


 sum += cros_ec_lpc_ops.read(EC_LPC_ADDR_HOST_PARAM, args.data_size,
        msg->data);


 if (args.checksum != sum) {
  dev_err(ec->dev,
   "bad packet checksum, expected %02x, got %02x\n",
   args.checksum, sum);
  ret = -EBADMSG;
  goto done;
 }


 ret = args.data_size;
done:
 return ret;
}
