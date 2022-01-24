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
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev)
{
	int rc;

	rc = FUNC2(&pdev->dev, FUNC0(44));
	if (rc) {
		rc = FUNC2(&pdev->dev, FUNC0(32));
		if (rc)
			FUNC1(KERN_ERR, &pdev->dev,
				"32-bit DMA enable failed\n");
	}
	return rc;
}