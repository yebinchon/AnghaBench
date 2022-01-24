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
struct wsm_set_bss_params {int beacon_lost_count; int /*<<< orphan*/  operational_rate_set; int /*<<< orphan*/  aid; scalar_t__ reset_beacon_loss; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wsm_buf*,int) ; 
 int /*<<< orphan*/  WSM_SET_BSS_PARAMS_REQ_ID ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int FUNC4 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 

int FUNC6(struct cw1200_common *priv,
		       const struct wsm_set_bss_params *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;

	FUNC3(priv);

	FUNC2(buf, (arg->reset_beacon_loss ?  0x1 : 0));
	FUNC2(buf, arg->beacon_lost_count);
	FUNC0(buf, arg->aid);
	FUNC1(buf, arg->operational_rate_set);

	ret = FUNC4(priv, buf, NULL,
			   WSM_SET_BSS_PARAMS_REQ_ID, WSM_CMD_TIMEOUT);

	FUNC5(priv);
	return ret;

nomem:
	FUNC5(priv);
	return -ENOMEM;
}