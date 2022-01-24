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
typedef  enum cm_event_types { ____Placeholder_cm_event_types } cm_event_types ;
struct TYPE_2__ {scalar_t__ polling_interval_ms; } ;

/* Variables and functions */
 scalar_t__ cm_suspended ; 
 int /*<<< orphan*/ * default_event_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct charger_manager*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup_polling ; 
 int /*<<< orphan*/  FUNC3 (struct charger_manager*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct charger_manager *cm,
			enum cm_event_types type)
{
	if (cm_suspended)
		FUNC0(cm->dev, true);

	if (FUNC1(cm) && cm->desc->polling_interval_ms)
		FUNC2(&setup_polling);
	FUNC3(cm, default_event_names[type]);
}