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
struct ebook_switch {int /*<<< orphan*/  input; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  SW_TABLET_MODE ; 
 struct ebook_switch* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device)
{
	struct ebook_switch *button = FUNC1(device);
	unsigned long long state;
	acpi_status status;

	status = FUNC2(device->handle, "EBK", NULL, &state);
	if (FUNC0(status))
		return -EIO;

	/* input layer checks if event is redundant */
	FUNC3(button->input, SW_TABLET_MODE, !state);
	FUNC4(button->input);
	return 0;
}