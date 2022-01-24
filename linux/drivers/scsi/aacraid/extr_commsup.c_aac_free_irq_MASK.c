#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aac_dev {int max_msix; TYPE_1__* pdev; scalar_t__ msi; struct aac_dev* aac_msix; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(struct aac_dev *dev)
{
	int i;

	if (FUNC0(dev)) {
		if (dev->max_msix > 1) {
			for (i = 0; i < dev->max_msix; i++)
				FUNC1(FUNC4(dev->pdev, i),
					 &(dev->aac_msix[i]));
		} else {
			FUNC1(dev->pdev->irq, &(dev->aac_msix[0]));
		}
	} else {
		FUNC1(dev->pdev->irq, dev);
	}
	if (dev->msi)
		FUNC2(dev->pdev);
	else if (dev->max_msix > 1)
		FUNC3(dev->pdev);
}