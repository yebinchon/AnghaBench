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
typedef  int u16 ;
struct wsm_reset {scalar_t__ reset_statistics; int /*<<< orphan*/  link_id; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int) ; 
 int WSM_RESET_REQ_ID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 int FUNC3 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 

int FUNC5(struct cw1200_common *priv, const struct wsm_reset *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;
	u16 cmd = WSM_RESET_REQ_ID | FUNC1(arg->link_id);

	FUNC2(priv);

	FUNC0(buf, arg->reset_statistics ? 0 : 1);
	ret = FUNC3(priv, buf, NULL, cmd, WSM_CMD_RESET_TIMEOUT);
	FUNC4(priv);
	return ret;

nomem:
	FUNC4(priv);
	return -ENOMEM;
}