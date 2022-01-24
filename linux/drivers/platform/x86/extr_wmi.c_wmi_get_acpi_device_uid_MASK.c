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
struct wmi_block {int /*<<< orphan*/  acpi_device; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct wmi_block**) ; 

char *FUNC2(const char *guid_string)
{
	struct wmi_block *wblock = NULL;

	if (!FUNC1(guid_string, &wblock))
		return NULL;

	return FUNC0(wblock->acpi_device);
}