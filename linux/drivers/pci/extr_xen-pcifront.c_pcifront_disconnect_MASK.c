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
struct pcifront_device {TYPE_1__* xdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct pcifront_device* pcifront_dev ; 
 int /*<<< orphan*/  pcifront_dev_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pcifront_device *pdev)
{
	FUNC1(&pcifront_dev_lock);

	if (pdev == pcifront_dev) {
		FUNC0(&pdev->xdev->dev,
			 "Disconnecting PCI Frontend Buses\n");
		pcifront_dev = NULL;
	}

	FUNC2(&pcifront_dev_lock);
}