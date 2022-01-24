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
typedef  int /*<<< orphan*/  u32 ;
struct fujitsu_bl {int brightness_level; int /*<<< orphan*/  input; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_FUJITSU_NOTIFY_CODE ; 
 struct fujitsu_bl* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disable_brightness_adjust ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC6(struct acpi_device *device, u32 event)
{
	struct fujitsu_bl *priv = FUNC0(device);
	int oldb, newb;

	if (event != ACPI_FUJITSU_NOTIFY_CODE) {
		FUNC2(device->handle, "unsupported event [0x%x]\n",
				 event);
		FUNC5(priv->input, -1, 1, true);
		return;
	}

	oldb = priv->brightness_level;
	FUNC3(device);
	newb = priv->brightness_level;

	FUNC1(device->handle,
			  "brightness button event [%i -> %i]\n", oldb, newb);

	if (oldb == newb)
		return;

	if (!disable_brightness_adjust)
		FUNC4(device, newb);

	FUNC5(priv->input, oldb < newb, 1, true);
}