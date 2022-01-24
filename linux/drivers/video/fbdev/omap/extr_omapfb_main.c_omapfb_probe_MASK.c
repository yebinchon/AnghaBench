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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * fbdev_panel ; 
 struct platform_device* fbdev_pdev ; 
 int /*<<< orphan*/  omapdss_device ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int r;

	FUNC0(fbdev_pdev != NULL);

	r = FUNC3(&omapdss_device);
	if (r) {
		FUNC1(&pdev->dev, "can't register omapdss device\n");
		return r;
	}

	/* Delay actual initialization until the LCD is registered */
	fbdev_pdev = pdev;
	if (fbdev_panel != NULL)
		FUNC2(fbdev_pdev, fbdev_panel);
	return 0;
}