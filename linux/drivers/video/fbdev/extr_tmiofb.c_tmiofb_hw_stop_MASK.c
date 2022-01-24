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
struct tmiofb_par {scalar_t__ lcr; scalar_t__ ccr; } ;
struct tmio_fb_data {int /*<<< orphan*/  (* lcd_set_power ) (struct platform_device*,int /*<<< orphan*/ ) ;} ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fb_info {struct tmiofb_par* par; } ;

/* Variables and functions */
 scalar_t__ CCR_UGCC ; 
 scalar_t__ LCR_GM ; 
 scalar_t__ LCR_LCDCCRC ; 
 struct tmio_fb_data* FUNC0 (int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct tmio_fb_data *data = FUNC0(&dev->dev);
	struct fb_info *info = FUNC1(dev);
	struct tmiofb_par *par = info->par;

	FUNC3(0, par->ccr + CCR_UGCC);
	FUNC3(0, par->lcr + LCR_GM);
	data->lcd_set_power(dev, 0);
	FUNC3(0x0010, par->lcr + LCR_LCDCCRC);

	return 0;
}