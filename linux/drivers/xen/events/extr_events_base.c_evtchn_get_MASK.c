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
struct irq_info {scalar_t__ refcnt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (unsigned int) ; 
 struct irq_info* FUNC1 (int) ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 () ; 

int FUNC5(unsigned int evtchn)
{
	int irq;
	struct irq_info *info;
	int err = -ENOENT;

	if (evtchn >= FUNC4())
		return -EINVAL;

	FUNC2(&irq_mapping_update_lock);

	irq = FUNC0(evtchn);
	if (irq == -1)
		goto done;

	info = FUNC1(irq);

	if (!info)
		goto done;

	err = -EINVAL;
	if (info->refcnt <= 0)
		goto done;

	info->refcnt++;
	err = 0;
 done:
	FUNC3(&irq_mapping_update_lock);

	return err;
}