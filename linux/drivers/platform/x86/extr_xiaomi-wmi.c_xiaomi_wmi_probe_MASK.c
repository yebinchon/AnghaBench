#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xiaomi_wmi {unsigned int key_code; TYPE_1__* input_dev; } ;
struct wmi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {char* name; char* phys; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct xiaomi_wmi*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 struct xiaomi_wmi* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC5(struct wmi_device *wdev, const void *context)
{
	struct xiaomi_wmi *data;

	if (wdev == NULL || context == NULL)
		return -EINVAL;

	data = FUNC2(&wdev->dev, sizeof(struct xiaomi_wmi), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;
	FUNC0(&wdev->dev, data);

	data->input_dev = FUNC1(&wdev->dev);
	if (data->input_dev == NULL)
		return -ENOMEM;
	data->input_dev->name = "Xiaomi WMI keys";
	data->input_dev->phys = "wmi/input0";

	data->key_code = *((const unsigned int *)context);
	FUNC4(EV_KEY, data->input_dev->evbit);
	FUNC4(data->key_code, data->input_dev->keybit);

	return FUNC3(data->input_dev);
}