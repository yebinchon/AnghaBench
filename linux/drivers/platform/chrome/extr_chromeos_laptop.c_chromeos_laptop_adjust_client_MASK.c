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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct acpi_peripheral {int /*<<< orphan*/  properties; int /*<<< orphan*/  hid; } ;
struct acpi_device_id {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int num_acpi_peripherals; struct acpi_peripheral* acpi_peripherals; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ID_LEN ; 
 scalar_t__ FUNC0 (struct acpi_device_id*,int /*<<< orphan*/ *) ; 
 TYPE_1__* cros_laptop ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct i2c_client *client)
{
	const struct acpi_peripheral *acpi_dev;
	struct acpi_device_id acpi_ids[2] = { };
	int i;
	int error;

	if (!FUNC3(&client->dev))
		return false;

	for (i = 0; i < cros_laptop->num_acpi_peripherals; i++) {
		acpi_dev = &cros_laptop->acpi_peripherals[i];

		FUNC4(acpi_ids[0].id, acpi_dev->hid, ACPI_ID_LEN);

		if (FUNC0(acpi_ids, &client->dev)) {
			error = FUNC2(&client->dev,
						      acpi_dev->properties);
			if (error) {
				FUNC1(&client->dev,
					"failed to add properties: %d\n",
					error);
				break;
			}

			return true;
		}
	}

	return false;
}