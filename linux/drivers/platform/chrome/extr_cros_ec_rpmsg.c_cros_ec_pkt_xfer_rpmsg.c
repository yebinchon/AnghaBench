
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ec_host_response {int data_len; int result; } ;
struct cros_ec_rpmsg {int xfer_ack; int ept; } ;
struct cros_ec_device {int dev; scalar_t__* din; int dout; struct cros_ec_rpmsg* priv; } ;
struct cros_ec_command {int insize; scalar_t__ command; int data; int result; } ;


 int EBADMSG ;
 scalar_t__ EC_CMD_REBOOT_EC ;
 int EC_MSG_TIMEOUT_MS ;
 int EC_REBOOT_DELAY_MS ;
 int EIO ;
 int EMSGSIZE ;
 int cros_ec_check_result (struct cros_ec_device*,struct cros_ec_command*) ;
 int cros_ec_prepare_tx (struct cros_ec_device*,struct cros_ec_command*) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,...) ;
 int memcpy (int ,scalar_t__*,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int ) ;
 int reinit_completion (int *) ;
 int rpmsg_send (int ,int ,int) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int cros_ec_pkt_xfer_rpmsg(struct cros_ec_device *ec_dev,
      struct cros_ec_command *ec_msg)
{
 struct cros_ec_rpmsg *ec_rpmsg = ec_dev->priv;
 struct ec_host_response *response;
 unsigned long timeout;
 int len;
 int ret;
 u8 sum;
 int i;

 ec_msg->result = 0;
 len = cros_ec_prepare_tx(ec_dev, ec_msg);
 dev_dbg(ec_dev->dev, "prepared, len=%d\n", len);

 reinit_completion(&ec_rpmsg->xfer_ack);
 ret = rpmsg_send(ec_rpmsg->ept, ec_dev->dout, len);
 if (ret) {
  dev_err(ec_dev->dev, "rpmsg send failed\n");
  return ret;
 }

 timeout = msecs_to_jiffies(EC_MSG_TIMEOUT_MS);
 ret = wait_for_completion_timeout(&ec_rpmsg->xfer_ack, timeout);
 if (!ret) {
  dev_err(ec_dev->dev, "rpmsg send timeout\n");
  return -EIO;
 }


 response = (struct ec_host_response *)ec_dev->din;
 ec_msg->result = response->result;

 ret = cros_ec_check_result(ec_dev, ec_msg);
 if (ret)
  goto exit;

 if (response->data_len > ec_msg->insize) {
  dev_err(ec_dev->dev, "packet too long (%d bytes, expected %d)",
   response->data_len, ec_msg->insize);
  ret = -EMSGSIZE;
  goto exit;
 }


 memcpy(ec_msg->data, ec_dev->din + sizeof(*response),
        response->data_len);

 sum = 0;
 for (i = 0; i < sizeof(*response) + response->data_len; i++)
  sum += ec_dev->din[i];

 if (sum) {
  dev_err(ec_dev->dev, "bad packet checksum, calculated %x\n",
   sum);
  ret = -EBADMSG;
  goto exit;
 }

 ret = response->data_len;
exit:
 if (ec_msg->command == EC_CMD_REBOOT_EC)
  msleep(EC_REBOOT_DELAY_MS);

 return ret;
}
