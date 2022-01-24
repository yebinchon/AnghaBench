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
struct TYPE_2__ {scalar_t__ power; scalar_t__ fb_blank; scalar_t__ brightness; } ;
struct backlight_device {int /*<<< orphan*/  dev; TYPE_1__ props; } ;

/* Variables and functions */
 scalar_t__ BL_MAX_BRIGHT ; 
 scalar_t__ BRIGHTNESSOFF ; 
 int ETIMEDOUT ; 
 scalar_t__ FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  PPC_LDD1 ; 
 int /*<<< orphan*/  PPDR ; 
 int /*<<< orphan*/  PPSR ; 
 scalar_t__ SETBRIGHTNESS ; 
 int TXDUMMY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct backlight_device *bd)
{
	int ret = 0;

	FUNC4();

	/* If backlight is off then really turn it off */
	if ((bd->props.power != FB_BLANK_UNBLANK) || (bd->props.fb_blank != FB_BLANK_UNBLANK)) {
		ret = FUNC2(BRIGHTNESSOFF);
		if (ret != TXDUMMY) {
			FUNC1(&bd->dev, "brightness off timeout\n");
			/* turn off backlight */
			PPSR &= ~PPC_LDD1;
			PPDR |= PPC_LDD1;
			ret = -ETIMEDOUT;
		}
	} else  /* turn on backlight */
		PPSR |= PPC_LDD1;

		/* send command to our mcu */
		if (FUNC2(SETBRIGHTNESS) != TXDUMMY) {
			FUNC1(&bd->dev, "failed to set brightness\n");
			ret = -ETIMEDOUT;
			goto out;
		}

		/*
		 * at this point we expect that the mcu has accepted
		 * our command and is waiting for our new value
		 * please note that maximum brightness is 255,
		 * but due to physical layout it is equal to 0, so we simply
		 * invert the value (MAX VALUE - NEW VALUE).
		 */
		if (FUNC2(BL_MAX_BRIGHT - bd->props.brightness)
			!= TXDUMMY) {
			FUNC0(&bd->dev, "set brightness failed\n");
			ret = -ETIMEDOUT;
		}

		/*
		 * If infact we get an TXDUMMY as output we are happy and dont
		 * make any further comments about it
		 */
out:
	FUNC3();

	return ret;
}