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
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  driver_name ; 
 TYPE_2__ platform_bus ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int vhci_num_controllers ; 
 TYPE_1__* vhcis ; 

__attribute__((used)) static void FUNC2(void)
{
	struct platform_device *pdev;
	int i;

	for (i = 0; i < vhci_num_controllers; i++) {
		pdev = vhcis[i].pdev;
		if (pdev != NULL)
			FUNC0(pdev);
		vhcis[i].pdev = NULL;
	}
	FUNC1(&platform_bus.kobj, driver_name);
}