#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s3c2410fb_info {TYPE_1__* mem; int /*<<< orphan*/  io; int /*<<< orphan*/ * clk; } ;
struct platform_device {int dummy; } ;
struct fb_info {struct s3c2410fb_info* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct s3c2410fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC5 (struct platform_device*) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct s3c2410fb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct s3c2410fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct fb_info *fbinfo = FUNC5(pdev);
	struct s3c2410fb_info *info = fbinfo->par;
	int irq;

	FUNC12(fbinfo);
	FUNC9(info);

	FUNC10(info, 0);
	FUNC13(1000, 1100);

	FUNC11(fbinfo);

	if (info->clk) {
		FUNC0(info->clk);
		FUNC1(info->clk);
		info->clk = NULL;
	}

	irq = FUNC6(pdev, 0);
	FUNC3(irq, info);

	FUNC4(info->io);

	FUNC7(info->mem->start, FUNC8(info->mem));

	FUNC2(fbinfo);

	return 0;
}