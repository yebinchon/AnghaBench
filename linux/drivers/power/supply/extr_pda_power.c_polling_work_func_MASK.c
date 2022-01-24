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
struct work_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  polling_interval; } ;

/* Variables and functions */
 scalar_t__ PDA_PSY_TO_CHANGE ; 
 int /*<<< orphan*/  ac_irq ; 
 scalar_t__ ac_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ new_ac_status ; 
 scalar_t__ new_usb_status ; 
 TYPE_1__* pdata ; 
 int /*<<< orphan*/  polling_work ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  usb_irq ; 
 scalar_t__ usb_status ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	int changed = 0;

	FUNC1(dev, "polling...\n");

	FUNC5();

	if (!ac_irq && new_ac_status != ac_status) {
		ac_status = PDA_PSY_TO_CHANGE;
		changed = 1;
	}

	if (!usb_irq && new_usb_status != usb_status) {
		usb_status = PDA_PSY_TO_CHANGE;
		changed = 1;
	}

	if (changed)
		FUNC3();

	FUNC0(&polling_work);
	FUNC4(&polling_work,
			      FUNC2(pdata->polling_interval));
}