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
struct TYPE_6__ {int /*<<< orphan*/  brightness; } ;
struct tps65217_bl_pdata {int /*<<< orphan*/  dft_brightness; TYPE_1__ props; } ;
struct tps65217_bl {int is_enabled; struct tps65217_bl_pdata* bl; TYPE_2__* dev; struct tps65217* tps; } ;
struct tps65217 {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; TYPE_2__ dev; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct tps65217_bl_pdata*) ; 
 int FUNC1 (struct tps65217_bl_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct tps65217_bl_pdata*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 struct tps65217* FUNC4 (int /*<<< orphan*/ ) ; 
 struct tps65217_bl_pdata* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,struct tps65217_bl*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct tps65217_bl* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct tps65217_bl*) ; 
 int FUNC9 (struct tps65217_bl*,struct tps65217_bl_pdata*) ; 
 int /*<<< orphan*/  tps65217_bl_ops ; 
 struct tps65217_bl_pdata* FUNC10 (struct platform_device*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int rc;
	struct tps65217 *tps = FUNC4(pdev->dev.parent);
	struct tps65217_bl *tps65217_bl;
	struct tps65217_bl_pdata *pdata;
	struct backlight_properties bl_props;

	pdata = FUNC10(pdev);
	if (FUNC0(pdata))
		return FUNC1(pdata);

	tps65217_bl = FUNC6(&pdev->dev, sizeof(*tps65217_bl),
				GFP_KERNEL);
	if (tps65217_bl == NULL)
		return -ENOMEM;

	tps65217_bl->tps = tps;
	tps65217_bl->dev = &pdev->dev;
	tps65217_bl->is_enabled = false;

	rc = FUNC9(tps65217_bl, pdata);
	if (rc)
		return rc;

	FUNC7(&bl_props, 0, sizeof(struct backlight_properties));
	bl_props.type = BACKLIGHT_RAW;
	bl_props.max_brightness = 100;

	tps65217_bl->bl = FUNC5(&pdev->dev, pdev->name,
						tps65217_bl->dev, tps65217_bl,
						&tps65217_bl_ops, &bl_props);
	if (FUNC0(tps65217_bl->bl)) {
		FUNC3(tps65217_bl->dev,
			"registration of backlight device failed: %d\n", rc);
		return FUNC1(tps65217_bl->bl);
	}

	tps65217_bl->bl->props.brightness = pdata->dft_brightness;
	FUNC2(tps65217_bl->bl);
	FUNC8(pdev, tps65217_bl);

	return 0;
}