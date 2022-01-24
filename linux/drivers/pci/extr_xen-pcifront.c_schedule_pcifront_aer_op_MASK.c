#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcifront_device {int /*<<< orphan*/  op_work; TYPE_2__* xdev; int /*<<< orphan*/  flags; TYPE_1__* sh_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  _PDEVB_op_active ; 
 int /*<<< orphan*/  _XEN_PCIB_active ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static inline void FUNC4(struct pcifront_device *pdev)
{
	if (FUNC3(_XEN_PCIB_active, (unsigned long *)&pdev->sh_info->flags)
		&& !FUNC2(_PDEVB_op_active, &pdev->flags)) {
		FUNC0(&pdev->xdev->dev, "schedule aer frontend job\n");
		FUNC1(&pdev->op_work);
	}
}