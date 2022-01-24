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

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (char*,char**) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tgafb_pci_driver ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  tgafb_tc_driver ; 

__attribute__((used)) static int FUNC4(void)
{
	int status;
#ifndef MODULE
	char *option = NULL;

	if (FUNC0("tgafb", &option))
		return -ENODEV;
	FUNC3(option);
#endif
	status = FUNC1(&tgafb_pci_driver);
	if (!status)
		status = FUNC2(&tgafb_tc_driver);
	return status;
}