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
struct platform_device {int dummy; } ;
struct omapfb_device {int /*<<< orphan*/ * fb_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omapfb_device* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct omapfb_device *fbdev = FUNC1(pdev);

	if (fbdev != NULL)
		FUNC0(FB_BLANK_UNBLANK, fbdev->fb_info[0]);
	return 0;
}