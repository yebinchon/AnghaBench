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
typedef  int /*<<< orphan*/  u16 ;
struct subchannel_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  supported_funcs; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {TYPE_2__ options; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 struct ccw_device* FUNC0 (struct qeth_card*) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  anev_reset ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,struct subchannel_id*) ; 
 int FUNC2 (struct subchannel_id,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qeth_card*) ; 
 int FUNC3 (struct qeth_card*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * qeth_bridgeport_an_set_cb ; 

int FUNC5(struct qeth_card *card, int enable)
{
	int rc;
	u16 response;
	struct ccw_device *ddev;
	struct subchannel_id schid;

	if (!card)
		return -EINVAL;
	if (!card->options.sbp.supported_funcs)
		return -EOPNOTSUPP;
	ddev = FUNC0(card);
	FUNC1(ddev, &schid);

	if (enable) {
		FUNC4(card, anev_reset, 0, NULL, NULL);
		rc = FUNC2(schid, 1, &response,
			qeth_bridgeport_an_set_cb, card);
	} else
		rc = FUNC2(schid, 0, &response, NULL, NULL);
	return FUNC3(card, rc, response);
}