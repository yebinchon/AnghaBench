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
struct lcd_sync_arg {int /*<<< orphan*/  front_porch; int /*<<< orphan*/  pulse_width; int /*<<< orphan*/  back_porch; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOTTY ; 
#define  FBIGET_BRIGHTNESS 136 
#define  FBIGET_COLOR 135 
#define  FBIOGET_CONTRAST 134 
#define  FBIOPUT_CONTRAST 133 
#define  FBIO_WAITFORVSYNC 132 
#define  FBIPUT_BRIGHTNESS 131 
#define  FBIPUT_COLOR 130 
#define  FBIPUT_HSYNC 129 
#define  FBIPUT_VSYNC 128 
 int /*<<< orphan*/  FUNC0 (struct lcd_sync_arg*,char*,int) ; 
 int FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info, unsigned int cmd,
			  unsigned long arg)
{
	struct lcd_sync_arg sync_arg;

	switch (cmd) {
	case FBIOGET_CONTRAST:
	case FBIOPUT_CONTRAST:
	case FBIGET_BRIGHTNESS:
	case FBIPUT_BRIGHTNESS:
	case FBIGET_COLOR:
	case FBIPUT_COLOR:
		return -ENOTTY;
	case FBIPUT_HSYNC:
		if (FUNC0(&sync_arg, (char *)arg,
				sizeof(struct lcd_sync_arg)))
			return -EFAULT;
		FUNC2(sync_arg.back_porch,
					sync_arg.pulse_width,
					sync_arg.front_porch);
		break;
	case FBIPUT_VSYNC:
		if (FUNC0(&sync_arg, (char *)arg,
				sizeof(struct lcd_sync_arg)))
			return -EFAULT;
		FUNC3(sync_arg.back_porch,
					sync_arg.pulse_width,
					sync_arg.front_porch);
		break;
	case FBIO_WAITFORVSYNC:
		return FUNC1(info);
	default:
		return -EINVAL;
	}
	return 0;
}