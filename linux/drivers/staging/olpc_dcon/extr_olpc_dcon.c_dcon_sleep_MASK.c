#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct dcon_priv {int asleep; scalar_t__ bl_val; int /*<<< orphan*/  disp_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_DCON_POWER_MODE ; 
 int /*<<< orphan*/  MODE_BL_ENABLE ; 
 int FUNC0 (struct dcon_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dcon_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(struct dcon_priv *dcon, bool sleep)
{
	int x;

	/* Turn off the backlight and put the DCON to sleep */

	if (dcon->asleep == sleep)
		return;

	if (!FUNC3(FUNC2(0xc2)))
		return;

	if (sleep) {
		u8 pm = 0;

		x = FUNC4(EC_DCON_POWER_MODE, &pm, 1, NULL, 0);
		if (x)
			FUNC5("unable to force dcon to power down: %d!\n", x);
		else
			dcon->asleep = sleep;
	} else {
		/* Only re-enable the backlight if the backlight value is set */
		if (dcon->bl_val != 0)
			dcon->disp_mode |= MODE_BL_ENABLE;
		x = FUNC0(dcon, 1);
		if (x)
			FUNC5("unable to reinit dcon hardware: %d!\n", x);
		else
			dcon->asleep = sleep;

		/* Restore backlight */
		FUNC1(dcon, dcon->bl_val);
	}

	/* We should turn off some stuff in the framebuffer - but what? */
}