#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  smem_start; } ;
struct TYPE_5__ {int xres_virtual; int yres_virtual; } ;
struct TYPE_6__ {TYPE_1__ fix; scalar_t__ screen_base; TYPE_2__ var; } ;
struct goldfish_fb {int /*<<< orphan*/  reg_base; TYPE_3__ fb; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct goldfish_fb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct goldfish_fb*) ; 
 struct goldfish_fb* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	size_t framesize;
	struct goldfish_fb *fb = FUNC4(pdev);

	framesize = fb->fb.var.xres_virtual * fb->fb.var.yres_virtual * 2;
	FUNC5(&fb->fb);
	FUNC1(fb->irq, fb);

	FUNC0(&pdev->dev, framesize, (void *)fb->fb.screen_base,
						fb->fb.fix.smem_start);
	FUNC2(fb->reg_base);
	FUNC3(fb);
	return 0;
}