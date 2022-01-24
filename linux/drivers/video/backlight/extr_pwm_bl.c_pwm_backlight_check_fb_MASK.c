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
struct pwm_bl_data {int /*<<< orphan*/  dev; scalar_t__ (* check_fb ) (int /*<<< orphan*/ ,struct fb_info*) ;} ;
struct fb_info {int dummy; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 struct pwm_bl_data* FUNC0 (struct backlight_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct fb_info*) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *bl,
				  struct fb_info *info)
{
	struct pwm_bl_data *pb = FUNC0(bl);

	return !pb->check_fb || pb->check_fb(pb->dev, info);
}