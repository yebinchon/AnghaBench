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
struct xen_processor_px {int dummy; } ;
struct xen_processor_performance {unsigned int state_count; } ;
struct acpi_processor_px {int dummy; } ;
struct acpi_processor {TYPE_1__* performance; } ;
struct TYPE_2__ {unsigned int state_count; int /*<<< orphan*/ * states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct xen_processor_px* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct xen_processor_px* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_processor_px*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct xen_processor_px *
FUNC4(struct acpi_processor *_pr,
		  struct xen_processor_performance *dst_perf)
{
	struct xen_processor_px *dst_states = NULL;
	unsigned int i;

	FUNC0(sizeof(struct xen_processor_px) !=
		     sizeof(struct acpi_processor_px));

	dst_states = FUNC2(_pr->performance->state_count,
			     sizeof(struct xen_processor_px), GFP_KERNEL);
	if (!dst_states)
		return FUNC1(-ENOMEM);

	dst_perf->state_count = _pr->performance->state_count;
	for (i = 0; i < _pr->performance->state_count; i++) {
		/* Fortunatly for us, they are both the same size */
		FUNC3(&(dst_states[i]), &(_pr->performance->states[i]),
		       sizeof(struct acpi_processor_px));
	}
	return dst_states;
}