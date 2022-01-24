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
struct uwb_rc_evt_drp {int dummy; } ;
struct uwb_rc {int dummy; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ UWB_DRP_TYPE_ALIEN_BP ; 
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*,struct uwb_ie_drp*) ; 
 scalar_t__ FUNC1 (struct uwb_rc*,struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc*,struct uwb_dev*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*) ; 
 scalar_t__ FUNC4 (struct uwb_ie_drp*) ; 

__attribute__((used)) static void FUNC5(struct uwb_rc *rc, struct uwb_rc_evt_drp *drp_evt,
			    struct uwb_dev *src, struct uwb_ie_drp *drp_ie)
{
	if (FUNC4(drp_ie) == UWB_DRP_TYPE_ALIEN_BP)
		FUNC0(rc, drp_ie);
	else if (FUNC1(rc, drp_ie))
		FUNC2(rc, src, drp_evt, drp_ie);
	else
		FUNC3(rc, drp_evt, drp_ie);
}