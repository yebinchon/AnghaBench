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
struct fujitsu_bl {TYPE_2__* input; int /*<<< orphan*/  phys; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int product; int /*<<< orphan*/  bustype; } ;
struct TYPE_6__ {TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 char* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 struct fujitsu_bl* FUNC2 (struct acpi_device*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  keymap_backlight ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device)
{
	struct fujitsu_bl *priv = FUNC2(device);
	int ret;

	priv->input = FUNC3(&device->dev);
	if (!priv->input)
		return -ENOMEM;

	FUNC5(priv->phys, sizeof(priv->phys), "%s/video/input0",
		 FUNC0(device));

	priv->input->name = FUNC1(device);
	priv->input->phys = priv->phys;
	priv->input->id.bustype = BUS_HOST;
	priv->input->id.product = 0x06;

	ret = FUNC6(priv->input, keymap_backlight, NULL);
	if (ret)
		return ret;

	return FUNC4(priv->input);
}