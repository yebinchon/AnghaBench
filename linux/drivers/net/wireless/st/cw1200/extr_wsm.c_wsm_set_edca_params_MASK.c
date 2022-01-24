#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wsm_edca_params {TYPE_1__* params; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_rx_lifetime; int /*<<< orphan*/  txop_limit; int /*<<< orphan*/  aifns; int /*<<< orphan*/  cwmax; int /*<<< orphan*/  cwmin; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  WSM_EDCA_PARAMS_REQ_ID ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int FUNC4 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 

int FUNC6(struct cw1200_common *priv,
				const struct wsm_edca_params *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;

	FUNC3(priv);

	/* Implemented according to specification. */

	FUNC0(buf, arg->params[3].cwmin);
	FUNC0(buf, arg->params[2].cwmin);
	FUNC0(buf, arg->params[1].cwmin);
	FUNC0(buf, arg->params[0].cwmin);

	FUNC0(buf, arg->params[3].cwmax);
	FUNC0(buf, arg->params[2].cwmax);
	FUNC0(buf, arg->params[1].cwmax);
	FUNC0(buf, arg->params[0].cwmax);

	FUNC2(buf, arg->params[3].aifns);
	FUNC2(buf, arg->params[2].aifns);
	FUNC2(buf, arg->params[1].aifns);
	FUNC2(buf, arg->params[0].aifns);

	FUNC0(buf, arg->params[3].txop_limit);
	FUNC0(buf, arg->params[2].txop_limit);
	FUNC0(buf, arg->params[1].txop_limit);
	FUNC0(buf, arg->params[0].txop_limit);

	FUNC1(buf, arg->params[3].max_rx_lifetime);
	FUNC1(buf, arg->params[2].max_rx_lifetime);
	FUNC1(buf, arg->params[1].max_rx_lifetime);
	FUNC1(buf, arg->params[0].max_rx_lifetime);

	ret = FUNC4(priv, buf, NULL,
			   WSM_EDCA_PARAMS_REQ_ID, WSM_CMD_TIMEOUT);
	FUNC5(priv);
	return ret;

nomem:
	FUNC5(priv);
	return -ENOMEM;
}