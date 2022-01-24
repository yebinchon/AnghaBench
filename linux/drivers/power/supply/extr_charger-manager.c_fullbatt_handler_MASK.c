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
struct charger_manager {scalar_t__ fullbatt_vchk_jiffies_at; int /*<<< orphan*/  dev; int /*<<< orphan*/  fullbatt_vchk_work; struct charger_desc* desc; } ;
struct charger_desc {int /*<<< orphan*/  fullbatt_vchkdrop_ms; int /*<<< orphan*/  fullbatt_vchkdrop_uV; } ;

/* Variables and functions */
 size_t CM_EVENT_BATT_FULL ; 
 scalar_t__ cm_suspended ; 
 int /*<<< orphan*/  cm_wq ; 
 int /*<<< orphan*/ * default_event_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct charger_manager*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct charger_manager *cm)
{
	struct charger_desc *desc = cm->desc;

	if (!desc->fullbatt_vchkdrop_uV || !desc->fullbatt_vchkdrop_ms)
		goto out;

	if (cm_suspended)
		FUNC1(cm->dev, true);

	FUNC2(cm_wq, &cm->fullbatt_vchk_work,
			 FUNC3(desc->fullbatt_vchkdrop_ms));
	cm->fullbatt_vchk_jiffies_at = jiffies + FUNC3(
				       desc->fullbatt_vchkdrop_ms);

	if (cm->fullbatt_vchk_jiffies_at == 0)
		cm->fullbatt_vchk_jiffies_at = 1;

out:
	FUNC0(cm->dev, "EVENT_HANDLE: Battery Fully Charged\n");
	FUNC4(cm, default_event_names[CM_EVENT_BATT_FULL]);
}