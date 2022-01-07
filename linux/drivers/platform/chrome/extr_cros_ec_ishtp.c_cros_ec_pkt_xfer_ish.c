
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ishtp_cl_data {int dummy; } ;
struct ishtp_cl {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int data_len; int command_version; int command; int checksum; int struct_version; } ;
struct TYPE_4__ {scalar_t__ status; int channel; } ;
struct cros_ish_out_msg {TYPE_2__ ec_request; TYPE_1__ hdr; } ;
struct TYPE_6__ {int data_len; int result; int checksum; int struct_version; } ;
struct cros_ish_in_msg {TYPE_3__ ec_response; } ;
struct cros_ec_device {size_t din_size; size_t dout_size; scalar_t__ dout; scalar_t__ din; struct ishtp_cl* priv; } ;
struct cros_ec_command {int insize; int outsize; scalar_t__ command; } ;


 int CROS_EC_COMMAND ;
 int EAGAIN ;
 scalar_t__ EC_CMD_REBOOT_EC ;
 int EC_REBOOT_DELAY_MS ;
 int EMSGSIZE ;
 scalar_t__ OUT_MSG_EC_REQUEST_PREAMBLE ;
 struct device* cl_data_to_dev (struct ishtp_cl_data*) ;
 int cros_ec_prepare_tx (struct cros_ec_device*,struct cros_ec_command*) ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int,...) ;
 int dev_err (struct device*,char*,size_t,size_t) ;
 int dev_warn (struct device*,char*) ;
 int down_read_trylock (int *) ;
 int init_lock ;
 int ish_send (struct ishtp_cl_data*,int *,size_t,int *,size_t) ;
 struct ishtp_cl_data* ishtp_get_client_data (struct ishtp_cl*) ;
 int msleep (int ) ;
 int prepare_cros_ec_rx (struct cros_ec_device*,struct cros_ish_in_msg*,struct cros_ec_command*) ;
 int up_read (int *) ;

__attribute__((used)) static int cros_ec_pkt_xfer_ish(struct cros_ec_device *ec_dev,
    struct cros_ec_command *msg)
{
 int rv;
 struct ishtp_cl *cros_ish_cl = ec_dev->priv;
 struct ishtp_cl_data *client_data = ishtp_get_client_data(cros_ish_cl);
 struct device *dev = cl_data_to_dev(client_data);
 struct cros_ish_in_msg *in_msg = (struct cros_ish_in_msg *)ec_dev->din;
 struct cros_ish_out_msg *out_msg =
  (struct cros_ish_out_msg *)ec_dev->dout;
 size_t in_size = sizeof(struct cros_ish_in_msg) + msg->insize;
 size_t out_size = sizeof(struct cros_ish_out_msg) + msg->outsize;


 if (in_size > ec_dev->din_size) {
  dev_err(dev,
   "Incoming payload size %zu is too large for ec_dev->din_size %d\n",
   in_size, ec_dev->din_size);
  return -EMSGSIZE;
 }

 if (out_size > ec_dev->dout_size) {
  dev_err(dev,
   "Outgoing payload size %zu is too large for ec_dev->dout_size %d\n",
   out_size, ec_dev->dout_size);
  return -EMSGSIZE;
 }


 if (!down_read_trylock(&init_lock)) {
  dev_warn(dev,
    "Host is not ready to send messages to ISH. Try again\n");
  return -EAGAIN;
 }


 out_msg->hdr.channel = CROS_EC_COMMAND;
 out_msg->hdr.status = 0;

 ec_dev->dout += OUT_MSG_EC_REQUEST_PREAMBLE;
 cros_ec_prepare_tx(ec_dev, msg);
 ec_dev->dout -= OUT_MSG_EC_REQUEST_PREAMBLE;

 dev_dbg(dev,
  "out_msg: struct_ver=0x%x checksum=0x%x command=0x%x command_ver=0x%x data_len=0x%x\n",
  out_msg->ec_request.struct_version,
  out_msg->ec_request.checksum,
  out_msg->ec_request.command,
  out_msg->ec_request.command_version,
  out_msg->ec_request.data_len);


 rv = ish_send(client_data,
        (u8 *)out_msg, out_size,
        (u8 *)in_msg, in_size);
 if (rv < 0)
  goto end_error;

 rv = prepare_cros_ec_rx(ec_dev, in_msg, msg);
 if (rv)
  goto end_error;

 rv = in_msg->ec_response.data_len;

 dev_dbg(dev,
  "in_msg: struct_ver=0x%x checksum=0x%x result=0x%x data_len=0x%x\n",
  in_msg->ec_response.struct_version,
  in_msg->ec_response.checksum,
  in_msg->ec_response.result,
  in_msg->ec_response.data_len);

end_error:
 if (msg->command == EC_CMD_REBOOT_EC)
  msleep(EC_REBOOT_DELAY_MS);

 up_read(&init_lock);

 return rv;
}
