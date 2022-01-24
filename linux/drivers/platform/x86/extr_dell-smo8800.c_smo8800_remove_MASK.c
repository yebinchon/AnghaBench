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
struct smo8800_device {int /*<<< orphan*/  miscdev; int /*<<< orphan*/  irq; } ;
struct acpi_device {int /*<<< orphan*/  dev; struct smo8800_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct smo8800_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct smo8800_device *smo8800 = device->driver_data;

	FUNC1(smo8800->irq, smo8800);
	FUNC2(&smo8800->miscdev);
	FUNC0(&device->dev, "device /dev/freefall unregistered\n");
	return 0;
}