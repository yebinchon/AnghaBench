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
struct wsm_switch_channel {int /*<<< orphan*/  channel_number; int /*<<< orphan*/  switch_count; int /*<<< orphan*/  mode; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int channel_switch_in_progress; struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WSM_SWITCH_CHANNEL_REQ_ID ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 int FUNC3 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 

int FUNC5(struct cw1200_common *priv,
			const struct wsm_switch_channel *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;

	FUNC2(priv);

	FUNC1(buf, arg->mode);
	FUNC1(buf, arg->switch_count);
	FUNC0(buf, arg->channel_number);

	priv->channel_switch_in_progress = 1;

	ret = FUNC3(priv, buf, NULL,
			   WSM_SWITCH_CHANNEL_REQ_ID, WSM_CMD_TIMEOUT);
	if (ret)
		priv->channel_switch_in_progress = 0;

	FUNC4(priv);
	return ret;

nomem:
	FUNC4(priv);
	return -ENOMEM;
}