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
struct sm501fb_info {struct fb_info** fb; } ;
struct platform_device {int dummy; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEAD_CRT ; 
 int /*<<< orphan*/  HEAD_PANEL ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sm501fb_info*) ; 
 struct sm501fb_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sm501fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sm501fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sm501fb_info *info = FUNC2(pdev);
	struct fb_info	   *fbinfo_crt = info->fb[0];
	struct fb_info	   *fbinfo_pnl = info->fb[1];

	FUNC3(info, HEAD_CRT);
	FUNC3(info, HEAD_PANEL);

	if (fbinfo_crt)
		FUNC5(fbinfo_crt);
	if (fbinfo_pnl)
		FUNC5(fbinfo_pnl);

	FUNC4(info);
	FUNC1(info);

	FUNC0(fbinfo_pnl);
	FUNC0(fbinfo_crt);

	return 0;
}