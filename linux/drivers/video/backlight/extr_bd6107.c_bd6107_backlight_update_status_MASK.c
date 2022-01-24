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
struct bd6107 {TYPE_1__* pdata; } ;
struct TYPE_4__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; int state; } ;
struct backlight_device {TYPE_2__ props; } ;
struct TYPE_3__ {int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD6107_LEDCNT1 ; 
 int BD6107_LEDCNT1_LEDONOFF1 ; 
 int /*<<< orphan*/  BD6107_MAINCNT1 ; 
 int /*<<< orphan*/  BD6107_PORTSEL ; 
 int FUNC0 (int) ; 
 int BL_CORE_FBBLANK ; 
 int BL_CORE_SUSPENDED ; 
 scalar_t__ FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC1 (struct bd6107*,int /*<<< orphan*/ ,int) ; 
 struct bd6107* FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct backlight_device *backlight)
{
	struct bd6107 *bd = FUNC2(backlight);
	int brightness = backlight->props.brightness;

	if (backlight->props.power != FB_BLANK_UNBLANK ||
	    backlight->props.fb_blank != FB_BLANK_UNBLANK ||
	    backlight->props.state & (BL_CORE_SUSPENDED | BL_CORE_FBBLANK))
		brightness = 0;

	if (brightness) {
		FUNC1(bd, BD6107_PORTSEL, FUNC0(2) |
			     FUNC0(1) | FUNC0(0));
		FUNC1(bd, BD6107_MAINCNT1, brightness);
		FUNC1(bd, BD6107_LEDCNT1, BD6107_LEDCNT1_LEDONOFF1);
	} else {
		FUNC3(bd->pdata->reset, 0);
		FUNC4(24);
		FUNC3(bd->pdata->reset, 1);
	}

	return 0;
}