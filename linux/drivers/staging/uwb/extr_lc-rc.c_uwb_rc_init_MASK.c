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
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  list; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * class; } ;
struct uwb_dev {TYPE_1__ dev; } ;
struct uwb_rc {int beaconing; TYPE_3__ uwb_beca; TYPE_2__ notifs_chain; int /*<<< orphan*/  scan_type; struct uwb_dev uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UWB_SCAN_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc*) ; 
 int /*<<< orphan*/  uwb_rc_class ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rc*) ; 
 int /*<<< orphan*/  uwb_rc_sys_release ; 
 int /*<<< orphan*/  FUNC7 (struct uwb_rc*) ; 

void FUNC8(struct uwb_rc *rc)
{
	struct uwb_dev *uwb_dev = &rc->uwb_dev;

	FUNC2(uwb_dev);
	rc->uwb_dev.dev.class = &uwb_rc_class;
	rc->uwb_dev.dev.release = uwb_rc_sys_release;
	FUNC5(rc);
	rc->beaconing = -1;
	rc->scan_type = UWB_SCAN_DISABLED;
	FUNC0(&rc->notifs_chain.list);
	FUNC1(&rc->notifs_chain.mutex);
	FUNC0(&rc->uwb_beca.list);
	FUNC1(&rc->uwb_beca.mutex);
	FUNC3(rc);
	FUNC4(rc);
	FUNC7(rc);
	FUNC6(rc);
}