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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ VHCI_HC_PORTS ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ vhci_num_controllers ; 

__attribute__((used)) static int FUNC2(__u32 *pdev_nr, __u32 *rhport)
{
	if (*pdev_nr >= vhci_num_controllers) {
		FUNC1("pdev %u\n", *pdev_nr);
		return 0;
	}
	*pdev_nr = FUNC0(*pdev_nr, vhci_num_controllers);

	if (*rhport >= VHCI_HC_PORTS) {
		FUNC1("rhport %u\n", *rhport);
		return 0;
	}
	*rhport = FUNC0(*rhport, VHCI_HC_PORTS);

	return 1;
}