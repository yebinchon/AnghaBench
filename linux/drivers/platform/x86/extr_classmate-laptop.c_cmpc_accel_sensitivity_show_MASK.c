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
struct input_dev {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmpc_accel {int sensitivity; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct acpi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					   struct device_attribute *attr,
					   char *buf)
{
	struct acpi_device *acpi;
	struct input_dev *inputdev;
	struct cmpc_accel *accel;

	acpi = FUNC2(dev);
	inputdev = FUNC0(&acpi->dev);
	accel = FUNC0(&inputdev->dev);

	return FUNC1(buf, "%d\n", accel->sensitivity);
}