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
struct nvidia_par {int /*<<< orphan*/  pci_dev; } ;
struct fb_info {struct backlight_device* bl_dev; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 struct fb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(struct nvidia_par *par)
{
	struct fb_info *info = FUNC1(par->pci_dev);
	struct backlight_device *bd = info->bl_dev;

	FUNC0(bd);
	FUNC2("nvidia: Backlight unloaded\n");
}