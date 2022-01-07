
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct power_supply {int dummy; } ;
struct TYPE_15__ {int command; } ;
struct TYPE_12__ {int channel; int byte; } ;
struct TYPE_13__ {TYPE_3__ resp; } ;
struct TYPE_11__ {int status; } ;
struct olpc_xo175_ec {int resp_len; int expected_resp_len; int* resp_data; int* logbuf; int logbuf_len; TYPE_8__* pwrbtn; int cmd_state_lock; int cmd_done; void* cmd_state; scalar_t__ cmd_running; TYPE_6__ cmd; int gpio_cmd; TYPE_4__ rx_buf; TYPE_2__ msg; TYPE_1__* spi; } ;
struct device {int dummy; } ;
struct TYPE_14__ {int parent; } ;
struct TYPE_16__ {TYPE_5__ dev; } ;
struct TYPE_10__ {struct device dev; } ;
 int CMD_ECHO ;
 void* CMD_STATE_CMD_IN_TX_FIFO ;
 void* CMD_STATE_CMD_SENT ;
 void* CMD_STATE_ERROR_RECEIVED ;
 void* CMD_STATE_RESP_RECEIVED ;
 int EINTR ;
 int KEY_POWER ;
 int LOG_BUF_SIZE ;
 int PM_WAKEUP_TIME ;
 int complete (int *) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,...) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int input_report_key (TYPE_8__*,int ,int) ;
 int input_sync (TYPE_8__*) ;
 int isprint (int) ;
 int memset (TYPE_6__*,int ,int) ;
 int olpc_xo175_ec_flush_logbuf (struct olpc_xo175_ec*) ;
 int olpc_xo175_ec_read_packet (struct olpc_xo175_ec*) ;
 int olpc_xo175_ec_send_command (struct olpc_xo175_ec*,TYPE_6__*,int) ;
 int pm_wakeup_event (int ,int ) ;
 int power_supply_changed (struct power_supply*) ;
 struct power_supply* power_supply_get_by_name (char*) ;
 int power_supply_put (struct power_supply*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void olpc_xo175_ec_complete(void *arg)
{
 struct olpc_xo175_ec *priv = arg;
 struct device *dev = &priv->spi->dev;
 struct power_supply *psy;
 unsigned long flags;
 u8 channel;
 u8 byte;
 int ret;

 ret = priv->msg.status;
 if (ret) {
  dev_err(dev, "SPI transfer failed: %d\n", ret);

  spin_lock_irqsave(&priv->cmd_state_lock, flags);
  if (priv->cmd_running) {
   priv->resp_len = 0;
   priv->cmd_state = CMD_STATE_ERROR_RECEIVED;
   complete(&priv->cmd_done);
  }
  spin_unlock_irqrestore(&priv->cmd_state_lock, flags);

  if (ret != -EINTR)
   olpc_xo175_ec_read_packet(priv);

  return;
 }

 channel = priv->rx_buf.resp.channel;
 byte = priv->rx_buf.resp.byte;

 switch (channel) {
 case 138:
  spin_lock_irqsave(&priv->cmd_state_lock, flags);

  if (!priv->cmd_running) {

   dev_err(dev, "spurious FIFO read packet\n");
   spin_unlock_irqrestore(&priv->cmd_state_lock, flags);
   return;
  }

  priv->cmd_state = CMD_STATE_CMD_SENT;
  if (!priv->expected_resp_len)
   complete(&priv->cmd_done);
  olpc_xo175_ec_read_packet(priv);

  spin_unlock_irqrestore(&priv->cmd_state_lock, flags);
  return;

 case 137:
  spin_lock_irqsave(&priv->cmd_state_lock, flags);

  if (!priv->cmd_running) {

   dev_err(dev, "spurious SWITCH packet\n");
   memset(&priv->cmd, 0, sizeof(priv->cmd));
   priv->cmd.command = CMD_ECHO;
  }

  priv->cmd_state = CMD_STATE_CMD_IN_TX_FIFO;


  gpiod_set_value_cansleep(priv->gpio_cmd, 0);
  olpc_xo175_ec_send_command(priv, &priv->cmd, sizeof(priv->cmd));

  spin_unlock_irqrestore(&priv->cmd_state_lock, flags);
  return;

 case 142:
  spin_lock_irqsave(&priv->cmd_state_lock, flags);

  if (!priv->cmd_running) {
   dev_err(dev, "spurious response packet\n");
  } else if (priv->resp_len >= priv->expected_resp_len) {
   dev_err(dev, "too many response packets\n");
  } else {
   priv->resp_data[priv->resp_len++] = byte;
   if (priv->resp_len == priv->expected_resp_len) {
    priv->cmd_state = CMD_STATE_RESP_RECEIVED;
    complete(&priv->cmd_done);
   }
  }

  spin_unlock_irqrestore(&priv->cmd_state_lock, flags);
  break;

 case 143:
  spin_lock_irqsave(&priv->cmd_state_lock, flags);

  if (!priv->cmd_running) {
   dev_err(dev, "spurious cmd error packet\n");
  } else {
   priv->resp_data[0] = byte;
   priv->resp_len = 1;
   priv->cmd_state = CMD_STATE_ERROR_RECEIVED;
   complete(&priv->cmd_done);
  }
  spin_unlock_irqrestore(&priv->cmd_state_lock, flags);
  break;

 case 139:
  dev_warn(dev, "keyboard is not supported\n");
  break;

 case 136:
  dev_warn(dev, "touchpad is not supported\n");
  break;

 case 140:
  dev_dbg(dev, "got event %.2x\n", byte);
  switch (byte) {
  case 135:
   psy = power_supply_get_by_name("olpc-ac");
   if (psy) {
    power_supply_changed(psy);
    power_supply_put(psy);
   }
   break;
  case 131:
  case 134:
  case 132:
  case 133:
   psy = power_supply_get_by_name("olpc-battery");
   if (psy) {
    power_supply_changed(psy);
    power_supply_put(psy);
   }
   break;
  case 130:
   input_report_key(priv->pwrbtn, KEY_POWER, 1);
   input_sync(priv->pwrbtn);
   input_report_key(priv->pwrbtn, KEY_POWER, 0);
   input_sync(priv->pwrbtn);

  case 129:
  case 128:
   pm_wakeup_event(priv->pwrbtn->dev.parent,
      PM_WAKEUP_TIME);
   break;
  default:
   dev_dbg(dev, "ignored unknown event %.2x\n", byte);
   break;
  }
  break;

 case 141:
  if (byte == '\n') {
   olpc_xo175_ec_flush_logbuf(priv);
  } else if (isprint(byte)) {
   priv->logbuf[priv->logbuf_len++] = byte;
   if (priv->logbuf_len == LOG_BUF_SIZE)
    olpc_xo175_ec_flush_logbuf(priv);
  }
  break;

 default:
  dev_warn(dev, "unknown channel: %d, %.2x\n", channel, byte);
  break;
 }


 olpc_xo175_ec_read_packet(priv);
}
