#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct config_group {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_3__ gadget_driver; int /*<<< orphan*/  name; int /*<<< orphan*/  max_speed; int /*<<< orphan*/ * resume; int /*<<< orphan*/ * suspend; void* unbind; void* bind; } ;
struct TYPE_5__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  bDescriptorType; int /*<<< orphan*/  bLength; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;
struct gadget_info {struct config_group group; TYPE_2__ composite; TYPE_4__ cdev; int /*<<< orphan*/  available_func; int /*<<< orphan*/  string_list; int /*<<< orphan*/  lock; struct config_group os_desc_group; struct config_group strings_group; struct config_group configs_group; struct config_group functions_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct config_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_DT_DEVICE ; 
 int /*<<< orphan*/  USB_DT_DEVICE_SIZE ; 
 int /*<<< orphan*/  USB_SPEED_SUPER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  config_desc_type ; 
 int /*<<< orphan*/  FUNC3 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct config_group*,struct config_group*) ; 
 void* configfs_do_nothing ; 
 TYPE_3__ configfs_driver_template ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  functions_type ; 
 int /*<<< orphan*/  gadget_root_type ; 
 int /*<<< orphan*/  gadget_strings_strings_type ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct gadget_info*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 struct gadget_info* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  os_desc_type ; 

__attribute__((used)) static struct config_group *FUNC11(
		struct config_group *group,
		const char *name)
{
	struct gadget_info *gi;

	gi = FUNC9(sizeof(*gi), GFP_KERNEL);
	if (!gi)
		return FUNC0(-ENOMEM);

	FUNC3(&gi->group, name, &gadget_root_type);

	FUNC3(&gi->functions_group, "functions",
			&functions_type);
	FUNC4(&gi->functions_group, &gi->group);

	FUNC3(&gi->configs_group, "configs",
			&config_desc_type);
	FUNC4(&gi->configs_group, &gi->group);

	FUNC3(&gi->strings_group, "strings",
			&gadget_strings_strings_type);
	FUNC4(&gi->strings_group, &gi->group);

	FUNC3(&gi->os_desc_group, "os_desc",
			&os_desc_type);
	FUNC4(&gi->os_desc_group, &gi->group);

	gi->composite.bind = configfs_do_nothing;
	gi->composite.unbind = configfs_do_nothing;
	gi->composite.suspend = NULL;
	gi->composite.resume = NULL;
	gi->composite.max_speed = USB_SPEED_SUPER;

	FUNC10(&gi->lock);
	FUNC1(&gi->string_list);
	FUNC1(&gi->available_func);

	FUNC2(&gi->cdev);
	gi->cdev.desc.bLength = USB_DT_DEVICE_SIZE;
	gi->cdev.desc.bDescriptorType = USB_DT_DEVICE;
	gi->cdev.desc.bcdDevice = FUNC5(FUNC6());

	gi->composite.gadget_driver = configfs_driver_template;

	gi->composite.gadget_driver.function = FUNC8(name, GFP_KERNEL);
	gi->composite.name = gi->composite.gadget_driver.function;

	if (!gi->composite.gadget_driver.function)
		goto err;

	return &gi->group;
err:
	FUNC7(gi);
	return FUNC0(-ENOMEM);
}