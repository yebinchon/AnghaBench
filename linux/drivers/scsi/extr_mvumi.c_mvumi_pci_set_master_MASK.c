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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IS_DMA64 ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev)
{
	int ret = 0;

	FUNC2(pdev);

	if (IS_DMA64) {
		if (FUNC1(&pdev->dev, FUNC0(64)))
			ret = FUNC1(&pdev->dev, FUNC0(32));
	} else
		ret = FUNC1(&pdev->dev, FUNC0(32));

	return ret;
}