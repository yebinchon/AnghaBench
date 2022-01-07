
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_msg {int len; char* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct ec_host_response {int data_len; } ;
struct ec_host_response_i2c {int packet_length; int result; struct ec_host_response ec_response; } ;
struct ec_host_request_i2c {int command_protocol; } ;
struct cros_ec_device {int din_size; int dout_size; int dev; scalar_t__* dout; scalar_t__* din; struct i2c_client* priv; } ;
struct cros_ec_command {int insize; int outsize; scalar_t__ command; scalar_t__* data; int result; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int EBADMSG ;
 scalar_t__ EC_CMD_REBOOT_EC ;
 int EC_COMMAND_PROTOCOL_3 ;
 int EC_REBOOT_DELAY_MS ;
 int EC_RES_INVALID_COMMAND ;


 int EIO ;
 int EMSGSIZE ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 scalar_t__ I2C_M_RD ;
 int cros_ec_prepare_tx (struct cros_ec_device*,struct cros_ec_command*) ;
 int dev_dbg (int ,char*,scalar_t__,...) ;
 int dev_err (int ,char*,...) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int msleep (int ) ;

__attribute__((used)) static int cros_ec_pkt_xfer_i2c(struct cros_ec_device *ec_dev,
    struct cros_ec_command *msg)
{
 struct i2c_client *client = ec_dev->priv;
 int ret = -ENOMEM;
 int i;
 int packet_len;
 u8 *out_buf = ((void*)0);
 u8 *in_buf = ((void*)0);
 u8 sum;
 struct i2c_msg i2c_msg[2];
 struct ec_host_response *ec_response;
 struct ec_host_request_i2c *ec_request_i2c;
 struct ec_host_response_i2c *ec_response_i2c;
 int request_header_size = sizeof(struct ec_host_request_i2c);
 int response_header_size = sizeof(struct ec_host_response_i2c);

 i2c_msg[0].addr = client->addr;
 i2c_msg[0].flags = 0;
 i2c_msg[1].addr = client->addr;
 i2c_msg[1].flags = I2C_M_RD;

 packet_len = msg->insize + response_header_size;
 BUG_ON(packet_len > ec_dev->din_size);
 in_buf = ec_dev->din;
 i2c_msg[1].len = packet_len;
 i2c_msg[1].buf = (char *) in_buf;

 packet_len = msg->outsize + request_header_size;
 BUG_ON(packet_len > ec_dev->dout_size);
 out_buf = ec_dev->dout;
 i2c_msg[0].len = packet_len;
 i2c_msg[0].buf = (char *) out_buf;


 ec_request_i2c = (struct ec_host_request_i2c *) out_buf;
 ec_request_i2c->command_protocol = EC_COMMAND_PROTOCOL_3;

 ec_dev->dout++;
 ret = cros_ec_prepare_tx(ec_dev, msg);
 ec_dev->dout--;


 ret = i2c_transfer(client->adapter, i2c_msg, 2);
 if (ret < 0) {
  dev_dbg(ec_dev->dev, "i2c transfer failed: %d\n", ret);
  goto done;
 } else if (ret != 2) {
  dev_err(ec_dev->dev, "failed to get response: %d\n", ret);
  ret = -EIO;
  goto done;
 }

 ec_response_i2c = (struct ec_host_response_i2c *) in_buf;
 msg->result = ec_response_i2c->result;
 ec_response = &ec_response_i2c->ec_response;

 switch (msg->result) {
 case 128:
  break;
 case 129:
  ret = -EAGAIN;
  dev_dbg(ec_dev->dev, "command 0x%02x in progress\n",
   msg->command);
  goto done;

 default:
  dev_dbg(ec_dev->dev, "command 0x%02x returned %d\n",
   msg->command, msg->result);
  if (ec_response_i2c->result == EC_RES_INVALID_COMMAND &&
      ec_response_i2c->packet_length == 0) {
   ret = -EPROTONOSUPPORT;
   goto done;
  }
 }

 if (ec_response_i2c->packet_length < sizeof(struct ec_host_response)) {
  dev_err(ec_dev->dev,
   "response of %u bytes too short; not a full header\n",
   ec_response_i2c->packet_length);
  ret = -EBADMSG;
  goto done;
 }

 if (msg->insize < ec_response->data_len) {
  dev_err(ec_dev->dev,
   "response data size is too large: expected %u, got %u\n",
   msg->insize,
   ec_response->data_len);
  ret = -EMSGSIZE;
  goto done;
 }


 sum = 0;
 for (i = 0; i < sizeof(struct ec_host_response); i++)
  sum += ((u8 *)ec_response)[i];

 memcpy(msg->data,
        in_buf + response_header_size,
        ec_response->data_len);
 for (i = 0; i < ec_response->data_len; i++)
  sum += msg->data[i];


 if (sum) {
  dev_err(ec_dev->dev, "bad packet checksum\n");
  ret = -EBADMSG;
  goto done;
 }

 ret = ec_response->data_len;

done:
 if (msg->command == EC_CMD_REBOOT_EC)
  msleep(EC_REBOOT_DELAY_MS);

 return ret;
}
