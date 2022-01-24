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
struct charger_manager {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t CM_EVENT_BATT_OUT ; 
 scalar_t__ cm_suspended ; 
 char** default_event_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct charger_manager*) ; 
 int /*<<< orphan*/  FUNC3 (struct charger_manager*,char*) ; 

__attribute__((used)) static void FUNC4(struct charger_manager *cm)
{
	if (cm_suspended)
		FUNC1(cm->dev, true);

	if (!FUNC2(cm)) {
		FUNC0(cm->dev, "Battery Pulled Out!\n");
		FUNC3(cm, default_event_names[CM_EVENT_BATT_OUT]);
	} else {
		FUNC3(cm, "Battery Reinserted?");
	}
}