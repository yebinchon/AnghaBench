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
typedef  scalar_t__ u32 ;
struct toshiba_acpi_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  SCI_USB_SLEEP_MUSIC ; 
 scalar_t__ TOS_FAILURE ; 
 scalar_t__ TOS_NOT_SUPPORTED ; 
 scalar_t__ TOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct toshiba_acpi_dev*) ; 
 scalar_t__ FUNC3 (struct toshiba_acpi_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct toshiba_acpi_dev *dev, u32 state)
{
	u32 result;

	if (!FUNC2(dev))
		return -EIO;

	result = FUNC3(dev, SCI_USB_SLEEP_MUSIC, state);
	FUNC1(dev);
	if (result == TOS_FAILURE)
		FUNC0("ACPI call to set Sleep and Music failed\n");
	else if (result == TOS_NOT_SUPPORTED)
		return -ENODEV;

	return result == TOS_SUCCESS ? 0 : -EIO;
}