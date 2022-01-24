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
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct acpi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  i2c_multi_inst_count ; 
 int /*<<< orphan*/  r ; 

__attribute__((used)) static int FUNC3(struct acpi_device *adev)
{
	FUNC0(r);
	int count = 0;
	int ret;

	ret = FUNC2(adev, &r, i2c_multi_inst_count, &count);
	if (ret < 0)
		return ret;

	FUNC1(&r);
	return count;
}