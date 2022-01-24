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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  conf; } ;
struct ucsi_dp {int initialized; TYPE_2__* con; int /*<<< orphan*/  work; int /*<<< orphan*/  header; TYPE_1__ data; int /*<<< orphan*/  override; } ;
struct typec_altmode {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  CMDT_INIT 130 
 int /*<<< orphan*/  CMDT_RSP_ACK ; 
 int /*<<< orphan*/  CMDT_RSP_NAK ; 
#define  DP_CMD_CONFIGURE 129 
#define  DP_CMD_STATUS_UPDATE 128 
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_TYPEC_DP_MODE ; 
 int /*<<< orphan*/  USB_TYPEC_DP_SID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ucsi_dp* FUNC9 (struct typec_altmode*) ; 
 struct typec_altmode* FUNC10 (struct typec_altmode*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct ucsi_dp*) ; 
 int /*<<< orphan*/  FUNC13 (struct ucsi_dp*) ; 

__attribute__((used)) static int FUNC14(struct typec_altmode *alt,
				u32 header, const u32 *data, int count)
{
	struct ucsi_dp *dp = FUNC9(alt);
	int cmd_type = FUNC1(header);
	int cmd = FUNC0(header);

	FUNC6(&dp->con->lock);

	if (!dp->override && dp->initialized) {
		const struct typec_altmode *p = FUNC10(alt);

		FUNC5(&p->dev,
			 "firmware doesn't support alternate mode overriding\n");
		FUNC7(&dp->con->lock);
		return -EOPNOTSUPP;
	}

	switch (cmd_type) {
	case CMDT_INIT:
		dp->header = FUNC2(USB_TYPEC_DP_SID, 1, cmd);
		dp->header |= FUNC4(USB_TYPEC_DP_MODE);

		switch (cmd) {
		case DP_CMD_STATUS_UPDATE:
			if (FUNC13(dp))
				dp->header |= FUNC3(CMDT_RSP_NAK);
			else
				dp->header |= FUNC3(CMDT_RSP_ACK);
			break;
		case DP_CMD_CONFIGURE:
			dp->data.conf = *data;
			if (FUNC12(dp)) {
				dp->header |= FUNC3(CMDT_RSP_NAK);
			} else {
				dp->header |= FUNC3(CMDT_RSP_ACK);
				if (dp->initialized)
					FUNC11(dp->con);
				else
					dp->initialized = true;
			}
			break;
		default:
			dp->header |= FUNC3(CMDT_RSP_ACK);
			break;
		}

		FUNC8(&dp->work);
		break;
	default:
		break;
	}

	FUNC7(&dp->con->lock);

	return 0;
}