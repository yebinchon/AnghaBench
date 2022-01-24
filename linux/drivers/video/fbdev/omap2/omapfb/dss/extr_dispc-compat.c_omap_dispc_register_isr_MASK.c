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
typedef  scalar_t__ u32 ;
struct omap_dispc_isr_data {void* arg; scalar_t__ mask; int /*<<< orphan*/ * isr; } ;
typedef  int /*<<< orphan*/ * omap_dispc_isr_t ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; struct omap_dispc_isr_data* registered_isr; } ;

/* Variables and functions */
 int DISPC_MAX_NR_ISRS ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ dispc_compat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(omap_dispc_isr_t isr, void *arg, u32 mask)
{
	int i;
	int ret;
	unsigned long flags;
	struct omap_dispc_isr_data *isr_data;

	if (isr == NULL)
		return -EINVAL;

	FUNC1(&dispc_compat.irq_lock, flags);

	/* check for duplicate entry */
	for (i = 0; i < DISPC_MAX_NR_ISRS; i++) {
		isr_data = &dispc_compat.registered_isr[i];
		if (isr_data->isr == isr && isr_data->arg == arg &&
				isr_data->mask == mask) {
			ret = -EINVAL;
			goto err;
		}
	}

	isr_data = NULL;
	ret = -EBUSY;

	for (i = 0; i < DISPC_MAX_NR_ISRS; i++) {
		isr_data = &dispc_compat.registered_isr[i];

		if (isr_data->isr != NULL)
			continue;

		isr_data->isr = isr;
		isr_data->arg = arg;
		isr_data->mask = mask;
		ret = 0;

		break;
	}

	if (ret)
		goto err;

	FUNC0();

	FUNC2(&dispc_compat.irq_lock, flags);

	return 0;
err:
	FUNC2(&dispc_compat.irq_lock, flags);

	return ret;
}