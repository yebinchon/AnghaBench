#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssd1307fb_par {int /*<<< orphan*/  pwm; TYPE_2__* device_info; int /*<<< orphan*/  client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  bl_dev; struct ssd1307fb_par* par; } ;
struct TYPE_4__ {scalar_t__ need_pwm; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSD1307FB_DISPLAY_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client)
{
	struct fb_info *info = FUNC6(client);
	struct ssd1307fb_par *par = info->par;

	FUNC9(par->client, SSD1307FB_DISPLAY_OFF);

	FUNC2(info->bl_dev);

	FUNC10(info);
	if (par->device_info->need_pwm) {
		FUNC7(par->pwm);
		FUNC8(par->pwm);
	}
	FUNC3(info);
	FUNC0(FUNC1(info->fix.smem_start), FUNC5(info->fix.smem_len));
	FUNC4(info);

	return 0;
}