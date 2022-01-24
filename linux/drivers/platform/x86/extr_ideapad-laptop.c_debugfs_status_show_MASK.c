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
struct seq_file {struct ideapad_private* private; } ;
struct ideapad_private {TYPE_1__* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_CONSERVATION_BIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  VPCCMD_R_3G ; 
 int /*<<< orphan*/  VPCCMD_R_BL ; 
 int /*<<< orphan*/  VPCCMD_R_BL_MAX ; 
 int /*<<< orphan*/  VPCCMD_R_BL_POWER ; 
 int /*<<< orphan*/  VPCCMD_R_BT ; 
 int /*<<< orphan*/  VPCCMD_R_CAMERA ; 
 int /*<<< orphan*/  VPCCMD_R_RF ; 
 int /*<<< orphan*/  VPCCMD_R_TOUCHPAD ; 
 int /*<<< orphan*/  VPCCMD_R_WIFI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *data)
{
	struct ideapad_private *priv = s->private;
	unsigned long value;

	if (!priv)
		return -EINVAL;

	if (!FUNC1(priv->adev->handle, VPCCMD_R_BL_MAX, &value))
		FUNC2(s, "Backlight max:\t%lu\n", value);
	if (!FUNC1(priv->adev->handle, VPCCMD_R_BL, &value))
		FUNC2(s, "Backlight now:\t%lu\n", value);
	if (!FUNC1(priv->adev->handle, VPCCMD_R_BL_POWER, &value))
		FUNC2(s, "BL power value:\t%s\n", value ? "On" : "Off");
	FUNC2(s, "=====================\n");

	if (!FUNC1(priv->adev->handle, VPCCMD_R_RF, &value))
		FUNC2(s, "Radio status:\t%s(%lu)\n",
			   value ? "On" : "Off", value);
	if (!FUNC1(priv->adev->handle, VPCCMD_R_WIFI, &value))
		FUNC2(s, "Wifi status:\t%s(%lu)\n",
			   value ? "On" : "Off", value);
	if (!FUNC1(priv->adev->handle, VPCCMD_R_BT, &value))
		FUNC2(s, "BT status:\t%s(%lu)\n",
			   value ? "On" : "Off", value);
	if (!FUNC1(priv->adev->handle, VPCCMD_R_3G, &value))
		FUNC2(s, "3G status:\t%s(%lu)\n",
			   value ? "On" : "Off", value);
	FUNC2(s, "=====================\n");

	if (!FUNC1(priv->adev->handle, VPCCMD_R_TOUCHPAD, &value))
		FUNC2(s, "Touchpad status:%s(%lu)\n",
			   value ? "On" : "Off", value);
	if (!FUNC1(priv->adev->handle, VPCCMD_R_CAMERA, &value))
		FUNC2(s, "Camera status:\t%s(%lu)\n",
			   value ? "On" : "Off", value);
	FUNC3(s, "=====================\n");

	if (!FUNC0(priv->adev->handle, &value)) {
		FUNC2(s, "Conservation mode:\t%s(%lu)\n",
			   FUNC4(BM_CONSERVATION_BIT, &value) ? "On" : "Off",
			   value);
	}

	return 0;
}