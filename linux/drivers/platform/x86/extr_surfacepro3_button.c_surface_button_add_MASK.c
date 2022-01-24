#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct surface_button {int /*<<< orphan*/  phys; struct input_dev* input; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;
struct acpi_device {int /*<<< orphan*/  dev; struct surface_button* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEY_LEFTMETA ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int /*<<< orphan*/  SURFACE_BUTTON_DEVICE_NAME ; 
 int /*<<< orphan*/  SURFACE_BUTTON_OBJ_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 char* FUNC1 (struct acpi_device*) ; 
 char* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct input_dev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct surface_button*) ; 
 struct surface_button* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct acpi_device*) ; 

__attribute__((used)) static int FUNC16(struct acpi_device *device)
{
	struct surface_button *button;
	struct input_dev *input;
	const char *hid = FUNC1(device);
	char *name;
	int error;

	if (FUNC14(FUNC0(device), SURFACE_BUTTON_OBJ_NAME,
	    FUNC13(SURFACE_BUTTON_OBJ_NAME)))
		return -ENODEV;

	if (!FUNC15(device))
		return -ENODEV;

	button = FUNC10(sizeof(struct surface_button), GFP_KERNEL);
	if (!button)
		return -ENOMEM;

	device->driver_data = button;
	button->input = input = FUNC5();
	if (!input) {
		error = -ENOMEM;
		goto err_free_button;
	}

	name = FUNC2(device);
	FUNC12(name, SURFACE_BUTTON_DEVICE_NAME);
	FUNC11(button->phys, sizeof(button->phys), "%s/buttons", hid);

	input->name = name;
	input->phys = button->phys;
	input->id.bustype = BUS_HOST;
	input->dev.parent = &device->dev;
	FUNC8(input, EV_KEY, KEY_POWER);
	FUNC8(input, EV_KEY, KEY_LEFTMETA);
	FUNC8(input, EV_KEY, KEY_VOLUMEUP);
	FUNC8(input, EV_KEY, KEY_VOLUMEDOWN);

	error = FUNC7(input);
	if (error)
		goto err_free_input;

	FUNC4(&device->dev, true);
	FUNC3(&device->dev,
			"%s [%s]\n", name, FUNC0(device));
	return 0;

 err_free_input:
	FUNC6(input);
 err_free_button:
	FUNC9(button);
	return error;
}