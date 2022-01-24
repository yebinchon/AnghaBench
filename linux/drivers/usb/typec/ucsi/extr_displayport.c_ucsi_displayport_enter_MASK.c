#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ucsi_dp {int vdo_size; TYPE_3__* con; int /*<<< orphan*/  work; int /*<<< orphan*/ * vdo_data; int /*<<< orphan*/  header; scalar_t__ initialized; int /*<<< orphan*/  override; } ;
struct ucsi_control {int dummy; } ;
struct typec_altmode {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  cur ;
struct TYPE_8__ {TYPE_2__* ppm; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; struct typec_altmode** port_altmode; TYPE_4__* ucsi; int /*<<< orphan*/  num; } ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDT_RSP_ACK ; 
 int /*<<< orphan*/  CMD_ENTER_MODE ; 
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ucsi_control,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_TYPEC_DP_MODE ; 
 int /*<<< orphan*/  USB_TYPEC_DP_SID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ucsi_dp* FUNC8 (struct typec_altmode*) ; 
 struct typec_altmode* FUNC9 (struct typec_altmode*) ; 
 int FUNC10 (TYPE_4__*,struct ucsi_control*,int*,int) ; 

__attribute__((used)) static int FUNC11(struct typec_altmode *alt)
{
	struct ucsi_dp *dp = FUNC8(alt);
	struct ucsi_control ctrl;
	u8 cur = 0;
	int ret;

	FUNC5(&dp->con->lock);

	if (!dp->override && dp->initialized) {
		const struct typec_altmode *p = FUNC9(alt);

		FUNC4(&p->dev,
			 "firmware doesn't support alternate mode overriding\n");
		FUNC6(&dp->con->lock);
		return -EOPNOTSUPP;
	}

	FUNC0(ctrl, dp->con->num);
	ret = FUNC10(dp->con->ucsi, &ctrl, &cur, sizeof(cur));
	if (ret < 0) {
		if (dp->con->ucsi->ppm->data->version > 0x0100) {
			FUNC6(&dp->con->lock);
			return ret;
		}
		cur = 0xff;
	}

	if (cur != 0xff) {
		FUNC6(&dp->con->lock);
		if (dp->con->port_altmode[cur] == alt)
			return 0;
		return -EBUSY;
	}

	/*
	 * We can't send the New CAM command yet to the PPM as it needs the
	 * configuration value as well. Pretending that we have now entered the
	 * mode, and letting the alt mode driver continue.
	 */

	dp->header = FUNC1(USB_TYPEC_DP_SID, 1, CMD_ENTER_MODE);
	dp->header |= FUNC3(USB_TYPEC_DP_MODE);
	dp->header |= FUNC2(CMDT_RSP_ACK);

	dp->vdo_data = NULL;
	dp->vdo_size = 1;

	FUNC7(&dp->work);

	FUNC6(&dp->con->lock);

	return 0;
}