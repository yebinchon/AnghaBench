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
struct wsm_configuration {int dpdData_size; int /*<<< orphan*/  dpdData; int /*<<< orphan*/  dot11StationId; int /*<<< orphan*/  dot11RtsThreshold; int /*<<< orphan*/  dot11MaxReceiveLifeTime; int /*<<< orphan*/  dot11MaxTransmitMsduLifeTime; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  WSM_CONFIGURATION_REQ_ID ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wsm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int FUNC4 (struct cw1200_common*,struct wsm_buf*,struct wsm_configuration*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 

int FUNC6(struct cw1200_common *priv, struct wsm_configuration *arg)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;

	FUNC3(priv);

	FUNC2(buf, arg->dot11MaxTransmitMsduLifeTime);
	FUNC2(buf, arg->dot11MaxReceiveLifeTime);
	FUNC2(buf, arg->dot11RtsThreshold);

	/* DPD block. */
	FUNC1(buf, arg->dpdData_size + 12);
	FUNC1(buf, 1); /* DPD version */
	FUNC0(buf, arg->dot11StationId, ETH_ALEN);
	FUNC1(buf, 5); /* DPD flags */
	FUNC0(buf, arg->dpdData, arg->dpdData_size);

	ret = FUNC4(priv, buf, arg,
			   WSM_CONFIGURATION_REQ_ID, WSM_CMD_TIMEOUT);

	FUNC5(priv);
	return ret;

nomem:
	FUNC5(priv);
	return -ENOMEM;
}