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
struct charger_manager {TYPE_1__* desc; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int polling_mode; } ;

/* Variables and functions */
#define  CM_POLL_ALWAYS 131 
#define  CM_POLL_CHARGING_ONLY 130 
#define  CM_POLL_DISABLE 129 
#define  CM_POLL_EXTERNAL_POWER_ONLY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct charger_manager*) ; 
 int FUNC2 (struct charger_manager*) ; 

__attribute__((used)) static bool FUNC3(struct charger_manager *cm)
{
	switch (cm->desc->polling_mode) {
	case CM_POLL_DISABLE:
		return false;
	case CM_POLL_ALWAYS:
		return true;
	case CM_POLL_EXTERNAL_POWER_ONLY:
		return FUNC2(cm);
	case CM_POLL_CHARGING_ONLY:
		return FUNC1(cm);
	default:
		FUNC0(cm->dev, "Incorrect polling_mode (%d)\n",
			 cm->desc->polling_mode);
	}

	return false;
}