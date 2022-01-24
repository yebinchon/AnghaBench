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
struct toshiba_acpi_dev {scalar_t__ cooling_method_supported; scalar_t__ wwan_supported; scalar_t__ usb_three_supported; scalar_t__ panel_power_on_supported; scalar_t__ kbd_function_keys_supported; scalar_t__ usb_sleep_music_supported; scalar_t__ usb_rapid_charge_supported; scalar_t__ usb_sleep_charge_supported; scalar_t__ accelerometer_supported; scalar_t__ eco_supported; scalar_t__ touchpad_supported; scalar_t__ kbd_illum_supported; scalar_t__ illumination_supported; scalar_t__ tr_backlight_supported; scalar_t__ fan_supported; scalar_t__ video_supported; scalar_t__ backlight_dev; scalar_t__ hotkey_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct toshiba_acpi_dev *dev)
{
	FUNC1("Supported laptop features:");

	if (dev->hotkey_dev)
		FUNC0(" hotkeys");
	if (dev->backlight_dev)
		FUNC0(" backlight");
	if (dev->video_supported)
		FUNC0(" video-out");
	if (dev->fan_supported)
		FUNC0(" fan");
	if (dev->tr_backlight_supported)
		FUNC0(" transflective-backlight");
	if (dev->illumination_supported)
		FUNC0(" illumination");
	if (dev->kbd_illum_supported)
		FUNC0(" keyboard-backlight");
	if (dev->touchpad_supported)
		FUNC0(" touchpad");
	if (dev->eco_supported)
		FUNC0(" eco-led");
	if (dev->accelerometer_supported)
		FUNC0(" accelerometer-axes");
	if (dev->usb_sleep_charge_supported)
		FUNC0(" usb-sleep-charge");
	if (dev->usb_rapid_charge_supported)
		FUNC0(" usb-rapid-charge");
	if (dev->usb_sleep_music_supported)
		FUNC0(" usb-sleep-music");
	if (dev->kbd_function_keys_supported)
		FUNC0(" special-function-keys");
	if (dev->panel_power_on_supported)
		FUNC0(" panel-power-on");
	if (dev->usb_three_supported)
		FUNC0(" usb3");
	if (dev->wwan_supported)
		FUNC0(" wwan");
	if (dev->cooling_method_supported)
		FUNC0(" cooling-method");

	FUNC0("\n");
}