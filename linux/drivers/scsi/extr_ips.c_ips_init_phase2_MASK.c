#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int max_cmds; TYPE_9__* pcidev; int /*<<< orphan*/  active; } ;
typedef  TYPE_1__ ips_ha_t ;
struct TYPE_11__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_9__*,char*) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  do_ipsintr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 TYPE_1__** ips_ha ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  ips_name ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(int index)
{
	ips_ha_t *ha;

	ha = ips_ha[index];

	FUNC1("ips_init_phase2", 1);
	if (!ha->active) {
		ips_ha[index] = NULL;
		return -1;
	}

	/* Install the interrupt handler */
	if (FUNC7(ha->pcidev->irq, do_ipsintr, IRQF_SHARED, ips_name, ha)) {
		FUNC0(KERN_WARNING, ha->pcidev,
			   "Unable to install interrupt handler\n");
		return FUNC3(ha, index);
	}

	/*
	 * Allocate a temporary SCB for initialization
	 */
	ha->max_cmds = 1;
	if (!FUNC4(ha)) {
		FUNC0(KERN_WARNING, ha->pcidev,
			   "Unable to allocate a CCB\n");
		FUNC2(ha->pcidev->irq, ha);
		return FUNC3(ha, index);
	}

	if (!FUNC6(ha)) {
		FUNC0(KERN_WARNING, ha->pcidev,
			   "Unable to initialize controller\n");
		FUNC2(ha->pcidev->irq, ha);
		return FUNC3(ha, index);
	}
	/* Free the temporary SCB */
	FUNC5(ha, 1);

	/* allocate CCBs */
	if (!FUNC4(ha)) {
		FUNC0(KERN_WARNING, ha->pcidev,
			   "Unable to allocate CCBs\n");
		FUNC2(ha->pcidev->irq, ha);
		return FUNC3(ha, index);
	}

	return SUCCESS;
}