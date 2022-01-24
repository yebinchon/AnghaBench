#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct power_supply {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  command; } ;
struct TYPE_12__ {int channel; int byte; } ;
struct TYPE_13__ {TYPE_3__ resp; } ;
struct TYPE_11__ {int status; } ;
struct olpc_xo175_ec {int resp_len; int expected_resp_len; int* resp_data; int* logbuf; int /*<<< orphan*/  logbuf_len; TYPE_8__* pwrbtn; int /*<<< orphan*/  cmd_state_lock; int /*<<< orphan*/  cmd_done; void* cmd_state; scalar_t__ cmd_running; TYPE_6__ cmd; int /*<<< orphan*/  gpio_cmd; TYPE_4__ rx_buf; TYPE_2__ msg; TYPE_1__* spi; } ;
struct device {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  parent; } ;
struct TYPE_16__ {TYPE_5__ dev; } ;
struct TYPE_10__ {struct device dev; } ;

/* Variables and functions */
#define  CHAN_CMD_ERROR 143 
#define  CHAN_CMD_RESP 142 
#define  CHAN_DEBUG 141 
#define  CHAN_EVENT 140 
#define  CHAN_KEYBOARD 139 
#define  CHAN_NONE 138 
#define  CHAN_SWITCH 137 
#define  CHAN_TOUCHPAD 136 
 int /*<<< orphan*/  CMD_ECHO ; 
 void* CMD_STATE_CMD_IN_TX_FIFO ; 
 void* CMD_STATE_CMD_SENT ; 
 void* CMD_STATE_ERROR_RECEIVED ; 
 void* CMD_STATE_RESP_RECEIVED ; 
 int EINTR ; 
#define  EVENT_AC_CHANGE 135 
#define  EVENT_BATTERY_CRITICAL 134 
#define  EVENT_BATTERY_ERROR 133 
#define  EVENT_BATTERY_SOC_CHANGE 132 
#define  EVENT_BATTERY_STATUS 131 
#define  EVENT_POWER_PRESSED 130 
#define  EVENT_POWER_PRESS_WAKE 129 
#define  EVENT_TIMED_HOST_WAKE 128 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  LOG_BUF_SIZE ; 
 int /*<<< orphan*/  PM_WAKEUP_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct olpc_xo175_ec*) ; 
 int /*<<< orphan*/  FUNC10 (struct olpc_xo175_ec*) ; 
 int /*<<< orphan*/  FUNC11 (struct olpc_xo175_ec*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct power_supply*) ; 
 struct power_supply* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC18(void *arg)
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
		FUNC2(dev, "SPI transfer failed: %d\n", ret);

		FUNC16(&priv->cmd_state_lock, flags);
		if (priv->cmd_running) {
			priv->resp_len = 0;
			priv->cmd_state = CMD_STATE_ERROR_RECEIVED;
			FUNC0(&priv->cmd_done);
		}
		FUNC17(&priv->cmd_state_lock, flags);

		if (ret != -EINTR)
			FUNC10(priv);

		return;
	}

	channel = priv->rx_buf.resp.channel;
	byte = priv->rx_buf.resp.byte;

	switch (channel) {
	case CHAN_NONE:
		FUNC16(&priv->cmd_state_lock, flags);

		if (!priv->cmd_running) {
			/* We can safely ignore these */
			FUNC2(dev, "spurious FIFO read packet\n");
			FUNC17(&priv->cmd_state_lock, flags);
			return;
		}

		priv->cmd_state = CMD_STATE_CMD_SENT;
		if (!priv->expected_resp_len)
			FUNC0(&priv->cmd_done);
		FUNC10(priv);

		FUNC17(&priv->cmd_state_lock, flags);
		return;

	case CHAN_SWITCH:
		FUNC16(&priv->cmd_state_lock, flags);

		if (!priv->cmd_running) {
			/* Just go with the flow */
			FUNC2(dev, "spurious SWITCH packet\n");
			FUNC8(&priv->cmd, 0, sizeof(priv->cmd));
			priv->cmd.command = CMD_ECHO;
		}

		priv->cmd_state = CMD_STATE_CMD_IN_TX_FIFO;

		/* Throw command into TxFIFO */
		FUNC4(priv->gpio_cmd, 0);
		FUNC11(priv, &priv->cmd, sizeof(priv->cmd));

		FUNC17(&priv->cmd_state_lock, flags);
		return;

	case CHAN_CMD_RESP:
		FUNC16(&priv->cmd_state_lock, flags);

		if (!priv->cmd_running) {
			FUNC2(dev, "spurious response packet\n");
		} else if (priv->resp_len >= priv->expected_resp_len) {
			FUNC2(dev, "too many response packets\n");
		} else {
			priv->resp_data[priv->resp_len++] = byte;
			if (priv->resp_len == priv->expected_resp_len) {
				priv->cmd_state = CMD_STATE_RESP_RECEIVED;
				FUNC0(&priv->cmd_done);
			}
		}

		FUNC17(&priv->cmd_state_lock, flags);
		break;

	case CHAN_CMD_ERROR:
		FUNC16(&priv->cmd_state_lock, flags);

		if (!priv->cmd_running) {
			FUNC2(dev, "spurious cmd error packet\n");
		} else {
			priv->resp_data[0] = byte;
			priv->resp_len = 1;
			priv->cmd_state = CMD_STATE_ERROR_RECEIVED;
			FUNC0(&priv->cmd_done);
		}
		FUNC17(&priv->cmd_state_lock, flags);
		break;

	case CHAN_KEYBOARD:
		FUNC3(dev, "keyboard is not supported\n");
		break;

	case CHAN_TOUCHPAD:
		FUNC3(dev, "touchpad is not supported\n");
		break;

	case CHAN_EVENT:
		FUNC1(dev, "got event %.2x\n", byte);
		switch (byte) {
		case EVENT_AC_CHANGE:
			psy = FUNC14("olpc-ac");
			if (psy) {
				FUNC13(psy);
				FUNC15(psy);
			}
			break;
		case EVENT_BATTERY_STATUS:
		case EVENT_BATTERY_CRITICAL:
		case EVENT_BATTERY_SOC_CHANGE:
		case EVENT_BATTERY_ERROR:
			psy = FUNC14("olpc-battery");
			if (psy) {
				FUNC13(psy);
				FUNC15(psy);
			}
			break;
		case EVENT_POWER_PRESSED:
			FUNC5(priv->pwrbtn, KEY_POWER, 1);
			FUNC6(priv->pwrbtn);
			FUNC5(priv->pwrbtn, KEY_POWER, 0);
			FUNC6(priv->pwrbtn);
			/* fall through */
		case EVENT_POWER_PRESS_WAKE:
		case EVENT_TIMED_HOST_WAKE:
			FUNC12(priv->pwrbtn->dev.parent,
						PM_WAKEUP_TIME);
			break;
		default:
			FUNC1(dev, "ignored unknown event %.2x\n", byte);
			break;
		}
		break;

	case CHAN_DEBUG:
		if (byte == '\n') {
			FUNC9(priv);
		} else if (FUNC7(byte)) {
			priv->logbuf[priv->logbuf_len++] = byte;
			if (priv->logbuf_len == LOG_BUF_SIZE)
				FUNC9(priv);
		}
		break;

	default:
		FUNC3(dev, "unknown channel: %d, %.2x\n", channel, byte);
		break;
	}

	/* Most non-command packets get the TxFIFO refilled and an ACK. */
	FUNC10(priv);
}