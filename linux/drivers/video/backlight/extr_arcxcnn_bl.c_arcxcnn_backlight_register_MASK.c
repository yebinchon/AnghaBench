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
struct backlight_properties {scalar_t__ max_brightness; scalar_t__ brightness; int /*<<< orphan*/  type; } ;
struct arcxcnn {int /*<<< orphan*/  bl; int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ initial_brightness; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_BRIGHTNESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arcxcnn_bl_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct arcxcnn*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct backlight_properties* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct arcxcnn *lp)
{
	struct backlight_properties *props;
	const char *name = lp->pdata->name ? : "arctic_bl";

	props = FUNC2(lp->dev, sizeof(*props), GFP_KERNEL);
	if (!props)
		return -ENOMEM;

	props->type = BACKLIGHT_PLATFORM;
	props->max_brightness = MAX_BRIGHTNESS;

	if (lp->pdata->initial_brightness > props->max_brightness)
		lp->pdata->initial_brightness = props->max_brightness;

	props->brightness = lp->pdata->initial_brightness;

	lp->bl = FUNC1(lp->dev, name, lp->dev, lp,
				       &arcxcnn_bl_ops, props);
	return FUNC0(lp->bl);
}