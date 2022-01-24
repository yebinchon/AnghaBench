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
struct wsm_update_ie {int /*<<< orphan*/  length; int /*<<< orphan*/  ies; int /*<<< orphan*/  count; int /*<<< orphan*/  what; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 int FUNC3 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 

int FUNC5(struct cw1200_common *priv,
		  const struct wsm_update_ie *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;

	FUNC2(priv);

	FUNC1(buf, arg->what);
	FUNC1(buf, arg->count);
	FUNC0(buf, arg->ies, arg->length);

	ret = FUNC3(priv, buf, NULL, 0x001B, WSM_CMD_TIMEOUT);

	FUNC4(priv);
	return ret;

nomem:
	FUNC4(priv);
	return -ENOMEM;
}