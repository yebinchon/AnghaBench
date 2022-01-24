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
struct wsm_map_link {int /*<<< orphan*/ * mac_addr; int /*<<< orphan*/  link_id; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int FUNC4 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 

int FUNC6(struct cw1200_common *priv, const struct wsm_map_link *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;
	u16 cmd = 0x001C | FUNC2(arg->link_id);

	FUNC3(priv);

	FUNC0(buf, &arg->mac_addr[0], sizeof(arg->mac_addr));
	FUNC1(buf, 0);

	ret = FUNC4(priv, buf, NULL, cmd, WSM_CMD_TIMEOUT);

	FUNC5(priv);
	return ret;

nomem:
	FUNC5(priv);
	return -ENOMEM;
}