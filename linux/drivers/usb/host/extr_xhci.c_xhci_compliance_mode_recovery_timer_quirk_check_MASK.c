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
 int /*<<< orphan*/  DMI_PRODUCT_NAME ; 
 int /*<<< orphan*/  DMI_SYS_VENDOR ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static bool FUNC2(void)
{
	const char *dmi_product_name, *dmi_sys_vendor;

	dmi_product_name = FUNC0(DMI_PRODUCT_NAME);
	dmi_sys_vendor = FUNC0(DMI_SYS_VENDOR);
	if (!dmi_product_name || !dmi_sys_vendor)
		return false;

	if (!(FUNC1(dmi_sys_vendor, "Hewlett-Packard")))
		return false;

	if (FUNC1(dmi_product_name, "Z420") ||
			FUNC1(dmi_product_name, "Z620") ||
			FUNC1(dmi_product_name, "Z820") ||
			FUNC1(dmi_product_name, "Z1 Workstation"))
		return true;

	return false;
}