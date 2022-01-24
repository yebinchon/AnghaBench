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
struct sgi_gbe {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gbefb_par {int /*<<< orphan*/  wc_cookie; } ;
struct fb_info {struct gbefb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  GBE_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static int FUNC7(struct platform_device* p_dev)
{
	struct fb_info *info = FUNC4(p_dev);
	struct gbefb_par *par = info->par;

	FUNC6(info);
	FUNC2();
	FUNC0(par->wc_cookie);
	FUNC5(GBE_BASE, sizeof(struct sgi_gbe));
	FUNC3(&p_dev->dev);
	FUNC1(info);

	return 0;
}