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
struct ideapad_private {TYPE_1__* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  I8042_CMD_AUX_DISABLE ; 
 int /*<<< orphan*/  I8042_CMD_AUX_ENABLE ; 
 int /*<<< orphan*/  VPCCMD_R_TOUCHPAD ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ideapad_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void FUNC3(struct ideapad_private *priv)
{
	unsigned long value;

	/* Without reading from EC touchpad LED doesn't switch state */
	if (!FUNC2(priv->adev->handle, VPCCMD_R_TOUCHPAD, &value)) {
		/* Some IdeaPads don't really turn off touchpad - they only
		 * switch the LED state. We (de)activate KBC AUX port to turn
		 * touchpad off and on. We send KEY_TOUCHPAD_OFF and
		 * KEY_TOUCHPAD_ON to not to get out of sync with LED */
		unsigned char param;
		FUNC0(&param, value ? I8042_CMD_AUX_ENABLE :
			      I8042_CMD_AUX_DISABLE);
		FUNC1(priv, value ? 67 : 66);
	}
}