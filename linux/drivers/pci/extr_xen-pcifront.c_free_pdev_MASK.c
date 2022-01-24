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
struct pcifront_device {scalar_t__ irq; scalar_t__ evtchn; scalar_t__ gnt_ref; TYPE_1__* xdev; scalar_t__ sh_info; int /*<<< orphan*/  op_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ INVALID_EVTCHN ; 
 scalar_t__ INVALID_GRANT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct pcifront_device *pdev)
{
	FUNC1(&pdev->xdev->dev, "freeing pdev @ 0x%p\n", pdev);

	FUNC6(pdev);

	FUNC0(&pdev->op_work);

	if (pdev->irq >= 0)
		FUNC7(pdev->irq, pdev);

	if (pdev->evtchn != INVALID_EVTCHN)
		FUNC8(pdev->xdev, pdev->evtchn);

	if (pdev->gnt_ref != INVALID_GRANT_REF)
		FUNC4(pdev->gnt_ref, 0 /* r/w page */,
					  (unsigned long)pdev->sh_info);
	else
		FUNC3((unsigned long)pdev->sh_info);

	FUNC2(&pdev->xdev->dev, NULL);

	FUNC5(pdev);
}