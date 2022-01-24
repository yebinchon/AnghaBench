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
struct lcd_device {int dummy; } ;
struct hx8357_data {int /*<<< orphan*/ * im_pins; scalar_t__ use_im_pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HX8357_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  HX8357_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  HX8357_WRITE_MEMORY_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hx8357_seq_address_mode ; 
 int /*<<< orphan*/  hx8357_seq_column_address ; 
 int /*<<< orphan*/  hx8357_seq_display_frame ; 
 int /*<<< orphan*/  hx8357_seq_display_mode ; 
 int /*<<< orphan*/  hx8357_seq_gamma ; 
 int /*<<< orphan*/  hx8357_seq_page_address ; 
 int /*<<< orphan*/  hx8357_seq_panel_driving ; 
 int /*<<< orphan*/  hx8357_seq_panel_related ; 
 int /*<<< orphan*/  hx8357_seq_pixel_format ; 
 int /*<<< orphan*/  hx8357_seq_power ; 
 int /*<<< orphan*/  hx8357_seq_power_normal ; 
 int /*<<< orphan*/  hx8357_seq_rgb ; 
 int /*<<< orphan*/  hx8357_seq_undefined1 ; 
 int /*<<< orphan*/  hx8357_seq_undefined2 ; 
 int /*<<< orphan*/  hx8357_seq_vcom ; 
 int FUNC2 (struct lcd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lcd_device*,int /*<<< orphan*/ ) ; 
 struct hx8357_data* FUNC4 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct lcd_device *lcdev)
{
	struct hx8357_data *lcd = FUNC4(lcdev);
	int ret;

	/*
	 * Set the interface selection pins to SPI mode, with three
	 * wires
	 */
	if (lcd->use_im_pins) {
		FUNC1(lcd->im_pins[0], 1);
		FUNC1(lcd->im_pins[1], 0);
		FUNC1(lcd->im_pins[2], 1);
	}

	ret = FUNC2(lcdev, hx8357_seq_power,
				FUNC0(hx8357_seq_power));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_vcom,
				FUNC0(hx8357_seq_vcom));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_power_normal,
				FUNC0(hx8357_seq_power_normal));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_panel_driving,
				FUNC0(hx8357_seq_panel_driving));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_display_frame,
				FUNC0(hx8357_seq_display_frame));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_panel_related,
				FUNC0(hx8357_seq_panel_related));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_undefined1,
				FUNC0(hx8357_seq_undefined1));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_undefined2,
				FUNC0(hx8357_seq_undefined2));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_gamma,
				FUNC0(hx8357_seq_gamma));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_address_mode,
				FUNC0(hx8357_seq_address_mode));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_pixel_format,
				FUNC0(hx8357_seq_pixel_format));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_column_address,
				FUNC0(hx8357_seq_column_address));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_page_address,
				FUNC0(hx8357_seq_page_address));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_rgb,
				FUNC0(hx8357_seq_rgb));
	if (ret < 0)
		return ret;

	ret = FUNC2(lcdev, hx8357_seq_display_mode,
				FUNC0(hx8357_seq_display_mode));
	if (ret < 0)
		return ret;

	ret = FUNC3(lcdev, HX8357_EXIT_SLEEP_MODE);
	if (ret < 0)
		return ret;

	/*
	 * The controller needs 120ms to fully recover from exiting sleep mode
	 */
	FUNC5(120);

	ret = FUNC3(lcdev, HX8357_SET_DISPLAY_ON);
	if (ret < 0)
		return ret;

	FUNC6(5000, 7000);

	ret = FUNC3(lcdev, HX8357_WRITE_MEMORY_START);
	if (ret < 0)
		return ret;

	return 0;
}