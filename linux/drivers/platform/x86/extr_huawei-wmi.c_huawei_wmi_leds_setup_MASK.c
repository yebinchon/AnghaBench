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
struct wmi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {char* name; int max_brightness; char* default_trigger; int /*<<< orphan*/  flags; int /*<<< orphan*/ * dev; int /*<<< orphan*/  brightness; int /*<<< orphan*/  brightness_set_blocking; } ;
struct huawei_wmi_priv {char* acpi_method; TYPE_1__ cdev; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_AUDIO_MICMUTE ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct huawei_wmi_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  huawei_wmi_micmute_led_set ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wmi_device *wdev)
{
	struct huawei_wmi_priv *priv = FUNC1(&wdev->dev);

	priv->handle = FUNC3();
	if (!priv->handle)
		return 0;

	if (FUNC0(priv->handle, "SPIN"))
		priv->acpi_method = "SPIN";
	else if (FUNC0(priv->handle, "WPIN"))
		priv->acpi_method = "WPIN";
	else
		return 0;

	priv->cdev.name = "platform::micmute";
	priv->cdev.max_brightness = 1;
	priv->cdev.brightness_set_blocking = huawei_wmi_micmute_led_set;
	priv->cdev.default_trigger = "audio-micmute";
	priv->cdev.brightness = FUNC4(LED_AUDIO_MICMUTE);
	priv->cdev.dev = &wdev->dev;
	priv->cdev.flags = LED_CORE_SUSPENDRESUME;

	return FUNC2(&wdev->dev, &priv->cdev);
}