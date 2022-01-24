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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int METHOD_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  hkey_handle ; 

__attribute__((used)) static acpi_status FUNC2(char *method, int *ret, int param)
{
	int response;

	if (!FUNC0(hkey_handle, &response, method, "dd", param)) {
		FUNC1(hkey_handle, "%s: evaluate failed", method);
		return AE_ERROR;
	}
	if (response & METHOD_ERR) {
		FUNC1(hkey_handle,
				"%s evaluated but flagged as error", method);
		return AE_ERROR;
	}
	*ret = response;
	return AE_OK;
}