#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {size_t nr_args; int /*<<< orphan*/ * args; scalar_t__ data_len; int /*<<< orphan*/  command; } ;
struct olpc_xo175_ec {int cmd_running; scalar_t__ cmd_state; size_t expected_resp_len; size_t resp_len; int /*<<< orphan*/  cmd_state_lock; int /*<<< orphan*/  gpio_cmd; int /*<<< orphan*/ * resp_data; TYPE_1__* spi; int /*<<< orphan*/  cmd_done; TYPE_2__ cmd; int /*<<< orphan*/  suspended; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ CMD_STATE_ERROR_RECEIVED ; 
 scalar_t__ CMD_STATE_WAITING_FOR_SWITCH ; 
 int EBUSY ; 
 int EOVERFLOW ; 
 int EREMOTEIO ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC8 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct olpc_xo175_ec*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(u8 cmd, u8 *inbuf, size_t inlen, u8 *resp,
					size_t resp_len, void *ec_cb_arg)
{
	struct olpc_xo175_ec *priv = ec_cb_arg;
	struct device *dev = &priv->spi->dev;
	unsigned long flags;
	size_t nr_bytes;
	int ret = 0;

	FUNC1(dev, "CMD %x, %zd bytes expected\n", cmd, resp_len);

	if (inlen > 5) {
		FUNC2(dev, "command len %zd too big!\n", resp_len);
		return -EOVERFLOW;
	}

	/* Suspending in the middle of an EC command hoses things badly! */
	if (FUNC0(priv->suspended))
		return -EBUSY;

	/* Ensure a valid command and return bytes */
	ret = FUNC11(cmd);
	if (ret < 0) {
		FUNC3(dev, "unknown command 0x%x\n", cmd);

		/*
		 * Assume the best in our callers, and allow unknown commands
		 * through. I'm not the charitable type, but it was beaten
		 * into me. Just maintain a minimum standard of sanity.
		 */
		if (resp_len > sizeof(priv->resp_data)) {
			FUNC2(dev, "response too big: %zd!\n", resp_len);
			return -EOVERFLOW;
		}
		nr_bytes = resp_len;
	} else {
		nr_bytes = (size_t)ret;
		ret = 0;
	}
	resp_len = FUNC8(resp_len, nr_bytes);

	FUNC13(&priv->cmd_state_lock, flags);

	/* Initialize the state machine */
	FUNC5(&priv->cmd_done);
	priv->cmd_running = true;
	priv->cmd_state = CMD_STATE_WAITING_FOR_SWITCH;
	FUNC7(&priv->cmd, 0, sizeof(priv->cmd));
	priv->cmd.command = cmd;
	priv->cmd.nr_args = inlen;
	priv->cmd.data_len = 0;
	FUNC6(priv->cmd.args, inbuf, inlen);
	priv->expected_resp_len = nr_bytes;
	priv->resp_len = 0;

	/* Tickle the cmd gpio to get things started */
	FUNC4(priv->gpio_cmd, 1);

	FUNC14(&priv->cmd_state_lock, flags);

	/* The irq handler should do the rest */
	if (!FUNC15(&priv->cmd_done,
			FUNC9(4000))) {
		FUNC2(dev, "EC cmd error: timeout in STATE %d\n",
				priv->cmd_state);
		FUNC4(priv->gpio_cmd, 0);
		FUNC12(priv->spi);
		FUNC10(priv);
		return -ETIMEDOUT;
	}

	FUNC13(&priv->cmd_state_lock, flags);

	/* Deal with the results. */
	if (priv->cmd_state == CMD_STATE_ERROR_RECEIVED) {
		/* EC-provided error is in the single response byte */
		FUNC2(dev, "command 0x%x returned error 0x%x\n",
						cmd, priv->resp_data[0]);
		ret = -EREMOTEIO;
	} else if (priv->resp_len != nr_bytes) {
		FUNC2(dev, "command 0x%x returned %d bytes, expected %zd bytes\n",
						cmd, priv->resp_len, nr_bytes);
		ret = -EREMOTEIO;
	} else {
		/*
		 * We may have 8 bytes in priv->resp, but we only care about
		 * what we've been asked for. If the caller asked for only 2
		 * bytes, give them that. We've guaranteed that
		 * resp_len <= priv->resp_len and priv->resp_len == nr_bytes.
		 */
		FUNC6(resp, priv->resp_data, resp_len);
	}

	/* This should already be low, but just in case. */
	FUNC4(priv->gpio_cmd, 0);
	priv->cmd_running = false;

	FUNC14(&priv->cmd_state_lock, flags);

	return ret;
}