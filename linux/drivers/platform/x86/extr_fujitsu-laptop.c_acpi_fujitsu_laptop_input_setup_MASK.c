#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fujitsu_laptop {TYPE_2__* input; int /*<<< orphan*/  phys; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_6__ {TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 char* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 struct fujitsu_laptop* FUNC2 (struct acpi_device*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fujitsu_laptop_dmi_table ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  keymap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct acpi_device *device)
{
	struct fujitsu_laptop *priv = FUNC2(device);
	int ret;

	priv->input = FUNC3(&device->dev);
	if (!priv->input)
		return -ENOMEM;

	FUNC6(priv->phys, sizeof(priv->phys), "%s/input0",
		 FUNC0(device));

	priv->input->name = FUNC1(device);
	priv->input->phys = priv->phys;
	priv->input->id.bustype = BUS_HOST;

	FUNC4(fujitsu_laptop_dmi_table);
	ret = FUNC7(priv->input, keymap, NULL);
	if (ret)
		return ret;

	return FUNC5(priv->input);
}