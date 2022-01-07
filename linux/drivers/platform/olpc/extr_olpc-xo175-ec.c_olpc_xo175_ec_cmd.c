
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {size_t nr_args; int * args; scalar_t__ data_len; int command; } ;
struct olpc_xo175_ec {int cmd_running; scalar_t__ cmd_state; size_t expected_resp_len; size_t resp_len; int cmd_state_lock; int gpio_cmd; int * resp_data; TYPE_1__* spi; int cmd_done; TYPE_2__ cmd; int suspended; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 scalar_t__ CMD_STATE_ERROR_RECEIVED ;
 scalar_t__ CMD_STATE_WAITING_FOR_SWITCH ;
 int EBUSY ;
 int EOVERFLOW ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 scalar_t__ WARN_ON (int ) ;
 int dev_dbg (struct device*,char*,int ,size_t) ;
 int dev_err (struct device*,char*,size_t,...) ;
 int dev_err_ratelimited (struct device*,char*,int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int init_completion (int *) ;
 int memcpy (int *,int *,size_t) ;
 int memset (TYPE_2__*,int ,int) ;
 size_t min (size_t,size_t) ;
 int msecs_to_jiffies (int) ;
 int olpc_xo175_ec_read_packet (struct olpc_xo175_ec*) ;
 int olpc_xo175_ec_resp_len (int ) ;
 int spi_slave_abort (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int olpc_xo175_ec_cmd(u8 cmd, u8 *inbuf, size_t inlen, u8 *resp,
     size_t resp_len, void *ec_cb_arg)
{
 struct olpc_xo175_ec *priv = ec_cb_arg;
 struct device *dev = &priv->spi->dev;
 unsigned long flags;
 size_t nr_bytes;
 int ret = 0;

 dev_dbg(dev, "CMD %x, %zd bytes expected\n", cmd, resp_len);

 if (inlen > 5) {
  dev_err(dev, "command len %zd too big!\n", resp_len);
  return -EOVERFLOW;
 }


 if (WARN_ON(priv->suspended))
  return -EBUSY;


 ret = olpc_xo175_ec_resp_len(cmd);
 if (ret < 0) {
  dev_err_ratelimited(dev, "unknown command 0x%x\n", cmd);






  if (resp_len > sizeof(priv->resp_data)) {
   dev_err(dev, "response too big: %zd!\n", resp_len);
   return -EOVERFLOW;
  }
  nr_bytes = resp_len;
 } else {
  nr_bytes = (size_t)ret;
  ret = 0;
 }
 resp_len = min(resp_len, nr_bytes);

 spin_lock_irqsave(&priv->cmd_state_lock, flags);


 init_completion(&priv->cmd_done);
 priv->cmd_running = 1;
 priv->cmd_state = CMD_STATE_WAITING_FOR_SWITCH;
 memset(&priv->cmd, 0, sizeof(priv->cmd));
 priv->cmd.command = cmd;
 priv->cmd.nr_args = inlen;
 priv->cmd.data_len = 0;
 memcpy(priv->cmd.args, inbuf, inlen);
 priv->expected_resp_len = nr_bytes;
 priv->resp_len = 0;


 gpiod_set_value_cansleep(priv->gpio_cmd, 1);

 spin_unlock_irqrestore(&priv->cmd_state_lock, flags);


 if (!wait_for_completion_timeout(&priv->cmd_done,
   msecs_to_jiffies(4000))) {
  dev_err(dev, "EC cmd error: timeout in STATE %d\n",
    priv->cmd_state);
  gpiod_set_value_cansleep(priv->gpio_cmd, 0);
  spi_slave_abort(priv->spi);
  olpc_xo175_ec_read_packet(priv);
  return -ETIMEDOUT;
 }

 spin_lock_irqsave(&priv->cmd_state_lock, flags);


 if (priv->cmd_state == CMD_STATE_ERROR_RECEIVED) {

  dev_err(dev, "command 0x%x returned error 0x%x\n",
      cmd, priv->resp_data[0]);
  ret = -EREMOTEIO;
 } else if (priv->resp_len != nr_bytes) {
  dev_err(dev, "command 0x%x returned %d bytes, expected %zd bytes\n",
      cmd, priv->resp_len, nr_bytes);
  ret = -EREMOTEIO;
 } else {






  memcpy(resp, priv->resp_data, resp_len);
 }


 gpiod_set_value_cansleep(priv->gpio_cmd, 0);
 priv->cmd_running = 0;

 spin_unlock_irqrestore(&priv->cmd_state_lock, flags);

 return ret;
}
