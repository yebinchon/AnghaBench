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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  smem_len; } ;
struct TYPE_4__ {TYPE_1__ fix; int /*<<< orphan*/  cmap; } ;
struct ocfb_dev {int /*<<< orphan*/  fb_phys; int /*<<< orphan*/  fb_virt; TYPE_2__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFB_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfb_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ocfb_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct ocfb_dev *fbdev = FUNC4(pdev);

	FUNC6(&fbdev->info);
	FUNC2(&fbdev->info.cmap);
	FUNC1(&pdev->dev, FUNC0(fbdev->info.fix.smem_len),
			  fbdev->fb_virt, fbdev->fb_phys);

	/* Disable display */
	FUNC3(fbdev, OCFB_CTRL, 0);

	FUNC5(pdev, NULL);

	return 0;
}