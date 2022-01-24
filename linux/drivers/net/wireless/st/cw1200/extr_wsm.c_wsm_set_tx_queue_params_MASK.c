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
typedef  int u8 ;
struct wsm_set_tx_queue_params {int ackPolicy; int /*<<< orphan*/  allowedMediumTime; int /*<<< orphan*/  maxTransmitLifetime; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wsm_buf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int FUNC4 (struct cw1200_common*,struct wsm_buf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 

int FUNC6(struct cw1200_common *priv,
		const struct wsm_set_tx_queue_params *arg, u8 id)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;
	u8 queue_id_to_wmm_aci[] = {3, 2, 0, 1};

	FUNC3(priv);

	FUNC2(buf, queue_id_to_wmm_aci[id]);
	FUNC2(buf, 0);
	FUNC2(buf, arg->ackPolicy);
	FUNC2(buf, 0);
	FUNC1(buf, arg->maxTransmitLifetime);
	FUNC0(buf, arg->allowedMediumTime);
	FUNC0(buf, 0);

	ret = FUNC4(priv, buf, NULL, 0x0012, WSM_CMD_TIMEOUT);

	FUNC5(priv);
	return ret;

nomem:
	FUNC5(priv);
	return -ENOMEM;
}