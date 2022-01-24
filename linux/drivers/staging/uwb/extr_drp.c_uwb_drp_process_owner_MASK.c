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
struct uwb_rsv {int dummy; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mas_bm {int /*<<< orphan*/  bm; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int /*<<< orphan*/  last_availability_bm; } ;
typedef  enum uwb_drp_reason { ____Placeholder_uwb_drp_reason } uwb_drp_reason ;

/* Variables and functions */
#define  UWB_DRP_REASON_ACCEPTED 131 
#define  UWB_DRP_REASON_CONFLICT 130 
#define  UWB_DRP_REASON_DENIED 129 
#define  UWB_DRP_REASON_PENDING 128 
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  UWB_RSV_STATE_NONE ; 
 int /*<<< orphan*/  UWB_RSV_STATE_O_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc*,struct uwb_rsv*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_mas_bm*,struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rsv*,struct uwb_mas_bm*) ; 
 int FUNC5 (struct uwb_ie_drp*) ; 
 int FUNC6 (struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC7 (struct uwb_rsv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct uwb_rc *rc, struct uwb_rsv *rsv,
				  struct uwb_dev *src, struct uwb_ie_drp *drp_ie,
				  struct uwb_rc_evt_drp *drp_evt)
{
	struct device *dev = &rc->uwb_dev.dev;
	int status;
	enum uwb_drp_reason reason_code;
	struct uwb_mas_bm mas;

	status = FUNC6(drp_ie);
	reason_code = FUNC5(drp_ie);
	FUNC3(&mas, drp_ie);

	if (status) {
		switch (reason_code) {
		case UWB_DRP_REASON_ACCEPTED:
			FUNC4(rsv, &mas);
			break;
		default:
			FUNC1(dev, "ignoring invalid DRP IE state (%d/%d)\n",
				 reason_code, status);
		}
	} else {
		switch (reason_code) {
		case UWB_DRP_REASON_PENDING:
			FUNC7(rsv, UWB_RSV_STATE_O_PENDING);
			break;
		case UWB_DRP_REASON_DENIED:
			FUNC7(rsv, UWB_RSV_STATE_NONE);
			break;
		case UWB_DRP_REASON_CONFLICT:
			/* resolve the conflict */
			FUNC0(mas.bm, src->last_availability_bm,
					  UWB_NUM_MAS);
			FUNC2(rc, rsv, drp_evt, drp_ie, &mas);
			break;
		default:
			FUNC1(dev, "ignoring invalid DRP IE state (%d/%d)\n",
				 reason_code, status);
		}
	}
}