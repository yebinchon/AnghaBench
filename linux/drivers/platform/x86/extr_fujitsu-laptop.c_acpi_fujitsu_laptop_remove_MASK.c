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
struct fujitsu_laptop {int /*<<< orphan*/  fifo; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct fujitsu_laptop* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct fujitsu_laptop *priv = FUNC0(device);

	FUNC1(device);

	FUNC2(&priv->fifo);

	return 0;
}