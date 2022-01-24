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
struct wsm_scan {int num_channels; int num_ssids; int band; int type; int flags; int max_tx_rate; int num_probes; int probe_delay; TYPE_2__* ssids; TYPE_1__* ch; int /*<<< orphan*/  auto_scan_interval; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ssid; int /*<<< orphan*/  length; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_chan_time; int /*<<< orphan*/  min_chan_time; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wsm_buf*,int) ; 
 int /*<<< orphan*/  WSM_START_SCAN_REQ_ID ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int FUNC5 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cw1200_common*) ; 

int FUNC7(struct cw1200_common *priv, const struct wsm_scan *arg)
{
	int i;
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;

	if (arg->num_channels > 48)
		return -EINVAL;

	if (arg->num_ssids > 2)
		return -EINVAL;

	if (arg->band > 1)
		return -EINVAL;

	FUNC4(priv);

	FUNC3(buf, arg->band);
	FUNC3(buf, arg->type);
	FUNC3(buf, arg->flags);
	FUNC3(buf, arg->max_tx_rate);
	FUNC2(buf, arg->auto_scan_interval);
	FUNC3(buf, arg->num_probes);
	FUNC3(buf, arg->num_channels);
	FUNC3(buf, arg->num_ssids);
	FUNC3(buf, arg->probe_delay);

	for (i = 0; i < arg->num_channels; ++i) {
		FUNC1(buf, arg->ch[i].number);
		FUNC1(buf, 0);
		FUNC2(buf, arg->ch[i].min_chan_time);
		FUNC2(buf, arg->ch[i].max_chan_time);
		FUNC2(buf, 0);
	}

	for (i = 0; i < arg->num_ssids; ++i) {
		FUNC2(buf, arg->ssids[i].length);
		FUNC0(buf, &arg->ssids[i].ssid[0],
			sizeof(arg->ssids[i].ssid));
	}

	ret = FUNC5(priv, buf, NULL,
			   WSM_START_SCAN_REQ_ID, WSM_CMD_TIMEOUT);
	FUNC6(priv);
	return ret;

nomem:
	FUNC6(priv);
	return -ENOMEM;
}