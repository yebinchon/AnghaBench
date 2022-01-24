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
struct tdo24m {int mode; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MODE_QVGA 129 
#define  MODE_VGA 128 
 int /*<<< orphan*/  lcd_panel_config ; 
 int /*<<< orphan*/  lcd_qvga_pass_through_tdo24m ; 
 int /*<<< orphan*/  lcd_qvga_transfer ; 
 int /*<<< orphan*/  lcd_vga_pass_through_tdo24m ; 
 int /*<<< orphan*/  lcd_vga_transfer_tdo24m ; 
 int /*<<< orphan*/  FUNC0 (struct tdo24m*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct tdo24m *lcd, int mode)
{
	switch (mode) {
	case MODE_VGA:
		FUNC0(lcd, lcd_vga_pass_through_tdo24m);
		FUNC0(lcd, lcd_panel_config);
		FUNC0(lcd, lcd_vga_transfer_tdo24m);
		break;
	case MODE_QVGA:
		FUNC0(lcd, lcd_qvga_pass_through_tdo24m);
		FUNC0(lcd, lcd_panel_config);
		FUNC0(lcd, lcd_qvga_transfer);
		break;
	default:
		return -EINVAL;
	}

	lcd->mode = mode;
	return 0;
}