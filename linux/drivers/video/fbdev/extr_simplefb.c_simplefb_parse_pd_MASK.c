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
struct simplefb_platform_data {int /*<<< orphan*/  format; int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct simplefb_params {TYPE_1__* format; int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct simplefb_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* simplefb_formats ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
			     struct simplefb_params *params)
{
	struct simplefb_platform_data *pd = FUNC2(&pdev->dev);
	int i;

	params->width = pd->width;
	params->height = pd->height;
	params->stride = pd->stride;

	params->format = NULL;
	for (i = 0; i < FUNC0(simplefb_formats); i++) {
		if (FUNC3(pd->format, simplefb_formats[i].name))
			continue;

		params->format = &simplefb_formats[i];
		break;
	}

	if (!params->format) {
		FUNC1(&pdev->dev, "Invalid format value\n");
		return -EINVAL;
	}

	return 0;
}