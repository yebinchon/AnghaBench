#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int status; int /*<<< orphan*/  conf; } ;
struct dp_altmode {TYPE_3__ data; TYPE_2__* port; TYPE_1__* alt; } ;
struct TYPE_5__ {int /*<<< orphan*/  vdo; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  DP_CONF_SIGNALING_DP ; 
 int /*<<< orphan*/  DP_CONF_UFP_U_AS_DFP_D ; 
 int /*<<< orphan*/  DP_CONF_UFP_U_AS_UFP_D ; 
 int DP_PIN_ASSIGN_DP_ONLY_MASK ; 
 int DP_PIN_ASSIGN_MULTI_FUNC_MASK ; 
#define  DP_STATUS_CON_BOTH 131 
#define  DP_STATUS_CON_DFP_D 130 
#define  DP_STATUS_CON_DISABLED 129 
#define  DP_STATUS_CON_UFP_D 128 
 int DP_STATUS_PREFER_MULTI_FUNC ; 
 int EINVAL ; 

__attribute__((used)) static int FUNC4(struct dp_altmode *dp, u8 con)
{
	u32 conf = DP_CONF_SIGNALING_DP; /* Only DP signaling supported */
	u8 pin_assign = 0;

	switch (con) {
	case DP_STATUS_CON_DISABLED:
		return 0;
	case DP_STATUS_CON_DFP_D:
		conf |= DP_CONF_UFP_U_AS_DFP_D;
		pin_assign = FUNC1(dp->alt->vdo) &
			     FUNC0(dp->port->vdo);
		break;
	case DP_STATUS_CON_UFP_D:
	case DP_STATUS_CON_BOTH: /* NOTE: First acting as DP source */
		conf |= DP_CONF_UFP_U_AS_UFP_D;
		pin_assign = FUNC0(dp->alt->vdo) &
			     FUNC1(dp->port->vdo);
		break;
	default:
		break;
	}

	/* Determining the initial pin assignment. */
	if (!FUNC2(dp->data.conf)) {
		/* Is USB together with DP preferred */
		if (dp->data.status & DP_STATUS_PREFER_MULTI_FUNC &&
		    pin_assign & DP_PIN_ASSIGN_MULTI_FUNC_MASK)
			pin_assign &= DP_PIN_ASSIGN_MULTI_FUNC_MASK;
		else if (pin_assign & DP_PIN_ASSIGN_DP_ONLY_MASK)
			pin_assign &= DP_PIN_ASSIGN_DP_ONLY_MASK;

		if (!pin_assign)
			return -EINVAL;

		conf |= FUNC3(pin_assign);
	}

	dp->data.conf = conf;

	return 0;
}