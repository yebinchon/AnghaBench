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
typedef  int u8 ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct pandora_private {int /*<<< orphan*/  old_state; } ;
struct backlight_properties {int /*<<< orphan*/  type; void* max_brightness; } ;
struct TYPE_2__ {void* brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef  int /*<<< orphan*/  props ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 void* MAX_USER_VALUE ; 
 int /*<<< orphan*/  PANDORABL_WAS_OFF ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  TWL4030_MODULE_INTBR ; 
 int /*<<< orphan*/  TWL_INTBR_PMBR1 ; 
 int /*<<< orphan*/  TWL_MODULE_PWM ; 
 int TWL_PMBR1_PWM0 ; 
 int TWL_PMBR1_PWM0_MUXMASK ; 
 int /*<<< orphan*/  TWL_PWM0_ON ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct backlight_device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pandora_private*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct pandora_private* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pandora_backlight_ops ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct backlight_device *bl;
	struct pandora_private *priv;
	u8 r;

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		FUNC3(&pdev->dev, "failed to allocate driver private data\n");
		return -ENOMEM;
	}

	FUNC6(&props, 0, sizeof(props));
	props.max_brightness = MAX_USER_VALUE;
	props.type = BACKLIGHT_RAW;
	bl = FUNC4(&pdev->dev, pdev->name, &pdev->dev,
					priv, &pandora_backlight_ops, &props);
	if (FUNC0(bl)) {
		FUNC3(&pdev->dev, "failed to register backlight\n");
		return FUNC1(bl);
	}

	FUNC7(pdev, bl);

	/* 64 cycle period, ON position 0 */
	FUNC9(TWL_MODULE_PWM, 0x80, TWL_PWM0_ON);

	priv->old_state = PANDORABL_WAS_OFF;
	bl->props.brightness = MAX_USER_VALUE;
	FUNC2(bl);

	/* enable PWM function in pin mux */
	FUNC8(TWL4030_MODULE_INTBR, &r, TWL_INTBR_PMBR1);
	r &= ~TWL_PMBR1_PWM0_MUXMASK;
	r |= TWL_PMBR1_PWM0;
	FUNC9(TWL4030_MODULE_INTBR, r, TWL_INTBR_PMBR1);

	return 0;
}