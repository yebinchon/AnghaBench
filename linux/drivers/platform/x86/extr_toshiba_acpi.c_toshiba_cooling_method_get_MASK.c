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
 int /*<<< orphan*/  HCI_COOLING_METHOD ; 
 scalar_t__ TOS_FAILURE ; 
 scalar_t__ TOS_NOT_SUPPORTED ; 
 scalar_t__ TOS_SUCCESS ; 
 scalar_t__ TOS_SUCCESS2 ; 
 scalar_t__ FUNC0 (struct toshiba_acpi_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct toshiba_acpi_dev *dev, u32 *state)
{
	u32 result = FUNC0(dev, HCI_COOLING_METHOD, state);

	if (result == TOS_FAILURE)
		FUNC1("ACPI call to get Cooling Method failed\n");

	if (result == TOS_NOT_SUPPORTED)
		return -ENODEV;

	return (result == TOS_SUCCESS || result == TOS_SUCCESS2) ? 0 : -EIO;
}