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
struct wsm_set_pm {int /*<<< orphan*/  min_auto_pspoll_period; int /*<<< orphan*/  ap_psm_change_period; int /*<<< orphan*/  fast_psm_idle_period; int /*<<< orphan*/  mode; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int ps_mode_switch_in_progress; struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WSM_SET_PM_REQ_ID ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*) ; 
 int FUNC2 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 

int FUNC4(struct cw1200_common *priv, const struct wsm_set_pm *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;
	priv->ps_mode_switch_in_progress = 1;

	FUNC1(priv);

	FUNC0(buf, arg->mode);
	FUNC0(buf, arg->fast_psm_idle_period);
	FUNC0(buf, arg->ap_psm_change_period);
	FUNC0(buf, arg->min_auto_pspoll_period);

	ret = FUNC2(priv, buf, NULL,
			   WSM_SET_PM_REQ_ID, WSM_CMD_TIMEOUT);

	FUNC3(priv);
	return ret;

nomem:
	FUNC3(priv);
	return -ENOMEM;
}