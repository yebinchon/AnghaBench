#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  properties; int /*<<< orphan*/  acpi_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* ts_data ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	int error;

	if (FUNC2(dev) &&
	    !FUNC3(ts_data->acpi_name, client->name, I2C_NAME_SIZE)) {
		error = FUNC1(dev, ts_data->properties);
		if (error)
			FUNC0(dev, "failed to add properties: %d\n", error);
	}
}