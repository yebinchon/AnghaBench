#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  store; int /*<<< orphan*/  show; TYPE_1__ attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* lowbatt_handle ; 
 int /*<<< orphan*/  sony_nc_lowbatt_show ; 
 int /*<<< orphan*/  sony_nc_lowbatt_store ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pd)
{
	unsigned int result;

	lowbatt_handle = FUNC2(sizeof(struct device_attribute), GFP_KERNEL);
	if (!lowbatt_handle)
		return -ENOMEM;

	FUNC3(&lowbatt_handle->attr);
	lowbatt_handle->attr.name = "lowbatt_hibernate";
	lowbatt_handle->attr.mode = S_IRUGO | S_IWUSR;
	lowbatt_handle->show = sony_nc_lowbatt_show;
	lowbatt_handle->store = sony_nc_lowbatt_store;

	result = FUNC0(&pd->dev, lowbatt_handle);
	if (result) {
		FUNC1(lowbatt_handle);
		lowbatt_handle = NULL;
		return result;
	}

	return 0;
}