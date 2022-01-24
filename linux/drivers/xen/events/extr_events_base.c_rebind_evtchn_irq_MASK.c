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
struct irq_info {scalar_t__ type; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IRQT_UNBOUND ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 struct irq_info* FUNC7 (int) ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

void FUNC12(int evtchn, int irq)
{
	struct irq_info *info = FUNC7(irq);

	if (FUNC1(!info))
		return;

	/* Make sure the irq is masked, since the new event channel
	   will also be masked. */
	FUNC4(irq);

	FUNC9(&irq_mapping_update_lock);

	/* After resume the irq<->evtchn mappings are all cleared out */
	FUNC0(FUNC6(evtchn) != -1);
	/* Expect irq to have been bound before,
	   so there should be a proper type */
	FUNC0(info->type == IRQT_UNBOUND);

	(void)FUNC11(irq, evtchn);

	FUNC10(&irq_mapping_update_lock);

        FUNC2(evtchn, info->cpu);
	/* This will be deferred until interrupt is processed */
	FUNC8(irq, FUNC3(info->cpu));

	/* Unmask the event channel. */
	FUNC5(irq);
}