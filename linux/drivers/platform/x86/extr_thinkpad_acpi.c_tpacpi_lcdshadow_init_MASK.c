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
struct ibm_init_struct {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hkey_handle ; 
 int lcdshadow_state ; 

__attribute__((used)) static int FUNC3(struct ibm_init_struct *iibm)
{
	acpi_handle get_shadow_handle;
	int output;

	if (FUNC0(FUNC2(hkey_handle, "GSSS", &get_shadow_handle))) {
		lcdshadow_state = -ENODEV;
		return 0;
	}

	if (!FUNC1(get_shadow_handle, &output, NULL, "dd", 0)) {
		lcdshadow_state = -EIO;
		return -EIO;
	}
	if (!(output & 0x10000)) {
		lcdshadow_state = -ENODEV;
		return 0;
	}
	lcdshadow_state = output & 0x1;

	return 0;
}