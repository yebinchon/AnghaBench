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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_hid_priv {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  array; scalar_t__ wakeup_mode; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_HID_DSM_HDEM_FN ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long long) ; 
 struct intel_hid_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long long,int,int) ; 

__attribute__((used)) static void FUNC10(acpi_handle handle, u32 event, void *context)
{
	struct platform_device *device = context;
	struct intel_hid_priv *priv = FUNC1(&device->dev);
	unsigned long long ev_index;

	if (priv->wakeup_mode) {
		/*
		 * Needed for wakeup from suspend-to-idle to work on some
		 * platforms that don't expose the 5-button array, but still
		 * send notifies with the power button event code to this
		 * device object on power button actions while suspended.
		 */
		if (event == 0xce)
			goto wakeup;

		/* Wake up on 5-button array events only. */
		if (event == 0xc0 || !priv->array)
			return;

		if (!FUNC8(priv->array, event)) {
			FUNC2(&device->dev, "unknown event 0x%x\n", event);
			return;
		}

wakeup:
		FUNC7(&device->dev);
		return;
	}

	/*
	 * Needed for suspend to work on some platforms that don't expose
	 * the 5-button array, but still send notifies with power button
	 * event code to this device object on power button actions.
	 *
	 * Report the power button press and release.
	 */
	if (!priv->array) {
		if (event == 0xce) {
			FUNC4(priv->input_dev, KEY_POWER, 1);
			FUNC5(priv->input_dev);
			return;
		}

		if (event == 0xcf) {
			FUNC4(priv->input_dev, KEY_POWER, 0);
			FUNC5(priv->input_dev);
			return;
		}
	}

	/* 0xC0 is for HID events, other values are for 5 button array */
	if (event != 0xc0) {
		if (!priv->array ||
		    !FUNC9(priv->array, event, 1, true))
			FUNC0(&device->dev, "unknown event 0x%x\n", event);
		return;
	}

	if (!FUNC6(handle, INTEL_HID_DSM_HDEM_FN,
				       &ev_index)) {
		FUNC3(&device->dev, "failed to get event index\n");
		return;
	}

	if (!FUNC9(priv->input_dev, ev_index, 1, true))
		FUNC0(&device->dev, "unknown event index 0x%llx\n",
			 ev_index);
}