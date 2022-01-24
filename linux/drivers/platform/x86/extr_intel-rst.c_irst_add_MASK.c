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
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irst_timeout_attr ; 
 int /*<<< orphan*/  irst_wakeup_attr ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *acpi)
{
	int error;

	error = FUNC0(&acpi->dev, &irst_timeout_attr);
	if (FUNC2(error))
		return error;

	error = FUNC0(&acpi->dev, &irst_wakeup_attr);
	if (FUNC2(error))
		FUNC1(&acpi->dev, &irst_timeout_attr);

	return error;
}