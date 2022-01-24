#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; TYPE_1__ dev; TYPE_3__ id; } ;
struct ideapad_private {struct input_dev* inputdev; TYPE_2__* platform_device; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ideapad_keymap ; 
 struct input_dev* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ideapad_private *priv)
{
	struct input_dev *inputdev;
	int error;

	inputdev = FUNC0();
	if (!inputdev)
		return -ENOMEM;

	inputdev->name = "Ideapad extra buttons";
	inputdev->phys = "ideapad/input0";
	inputdev->id.bustype = BUS_HOST;
	inputdev->dev.parent = &priv->platform_device->dev;

	error = FUNC4(inputdev, ideapad_keymap, NULL);
	if (error) {
		FUNC3("Unable to setup input device keymap\n");
		goto err_free_dev;
	}

	error = FUNC2(inputdev);
	if (error) {
		FUNC3("Unable to register input device\n");
		goto err_free_dev;
	}

	priv->inputdev = inputdev;
	return 0;

err_free_dev:
	FUNC1(inputdev);
	return error;
}