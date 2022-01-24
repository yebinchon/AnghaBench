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
struct fb_videomode {int xres; } ;
struct corgi_lcd {int mode; } ;

/* Variables and functions */
#define  CORGI_LCD_MODE_QVGA 129 
#define  CORGI_LCD_MODE_VGA 128 
 int /*<<< orphan*/  RESCTL_ADRS ; 
 int /*<<< orphan*/  RESCTL_QVGA ; 
 int /*<<< orphan*/  RESCTL_VGA ; 
 int /*<<< orphan*/  FUNC0 (struct corgi_lcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct corgi_lcd* FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct corgi_lcd*,int) ; 

__attribute__((used)) static int FUNC3(struct lcd_device *ld, struct fb_videomode *m)
{
	struct corgi_lcd *lcd = FUNC1(ld);
	int mode = CORGI_LCD_MODE_QVGA;

	if (m->xres == 640 || m->xres == 480)
		mode = CORGI_LCD_MODE_VGA;

	if (lcd->mode == mode)
		return 0;

	FUNC2(lcd, mode);

	switch (mode) {
	case CORGI_LCD_MODE_VGA:
		FUNC0(lcd, RESCTL_ADRS, RESCTL_VGA);
		break;
	case CORGI_LCD_MODE_QVGA:
	default:
		FUNC0(lcd, RESCTL_ADRS, RESCTL_QVGA);
		break;
	}

	lcd->mode = mode;
	return 0;
}