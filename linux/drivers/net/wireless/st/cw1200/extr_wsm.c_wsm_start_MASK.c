#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wsm_start {int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  ssid; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  probe_delay; int /*<<< orphan*/  preamble; int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  ct_window; int /*<<< orphan*/  channel_number; int /*<<< orphan*/  band; int /*<<< orphan*/  mode; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int tx_burst_idx; struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_START_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WSM_START_REQ_ID ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int FUNC5 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cw1200_common*) ; 

int FUNC7(struct cw1200_common *priv, const struct wsm_start *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;

	FUNC4(priv);

	FUNC3(buf, arg->mode);
	FUNC3(buf, arg->band);
	FUNC1(buf, arg->channel_number);
	FUNC2(buf, arg->ct_window);
	FUNC2(buf, arg->beacon_interval);
	FUNC3(buf, arg->dtim_period);
	FUNC3(buf, arg->preamble);
	FUNC3(buf, arg->probe_delay);
	FUNC3(buf, arg->ssid_len);
	FUNC0(buf, arg->ssid, sizeof(arg->ssid));
	FUNC2(buf, arg->basic_rate_set);

	priv->tx_burst_idx = -1;
	ret = FUNC5(priv, buf, NULL,
			   WSM_START_REQ_ID, WSM_CMD_START_TIMEOUT);

	FUNC6(priv);
	return ret;

nomem:
	FUNC6(priv);
	return -ENOMEM;
}