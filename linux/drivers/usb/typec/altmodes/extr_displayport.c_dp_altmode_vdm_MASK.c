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
typedef  int /*<<< orphan*/  u32 ;
struct typec_altmode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  conf; int /*<<< orphan*/  status; } ;
struct dp_altmode {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; TYPE_1__ data; } ;

/* Variables and functions */
#define  CMDT_RSP_ACK 133 
#define  CMDT_RSP_NAK 132 
#define  CMD_ENTER_MODE 131 
#define  CMD_EXIT_MODE 130 
#define  DP_CMD_CONFIGURE 129 
#define  DP_CMD_STATUS_UPDATE 128 
 scalar_t__ DP_STATE_IDLE ; 
 scalar_t__ DP_STATE_UPDATE ; 
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int FUNC2 (struct dp_altmode*) ; 
 int FUNC3 (struct dp_altmode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct dp_altmode* FUNC7 (struct typec_altmode*) ; 

__attribute__((used)) static int FUNC8(struct typec_altmode *alt,
			  const u32 hdr, const u32 *vdo, int count)
{
	struct dp_altmode *dp = FUNC7(alt);
	int cmd_type = FUNC1(hdr);
	int cmd = FUNC0(hdr);
	int ret = 0;

	FUNC4(&dp->lock);

	if (dp->state != DP_STATE_IDLE) {
		ret = -EBUSY;
		goto err_unlock;
	}

	switch (cmd_type) {
	case CMDT_RSP_ACK:
		switch (cmd) {
		case CMD_ENTER_MODE:
			dp->state = DP_STATE_UPDATE;
			break;
		case CMD_EXIT_MODE:
			dp->data.status = 0;
			dp->data.conf = 0;
			break;
		case DP_CMD_STATUS_UPDATE:
			dp->data.status = *vdo;
			ret = FUNC3(dp);
			break;
		case DP_CMD_CONFIGURE:
			ret = FUNC2(dp);
			break;
		default:
			break;
		}
		break;
	case CMDT_RSP_NAK:
		switch (cmd) {
		case DP_CMD_CONFIGURE:
			dp->data.conf = 0;
			ret = FUNC2(dp);
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}

	if (dp->state != DP_STATE_IDLE)
		FUNC6(&dp->work);

err_unlock:
	FUNC5(&dp->lock);
	return ret;
}