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
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ cmap; } ;
struct vt8500lcd_info {int /*<<< orphan*/  regbase; int /*<<< orphan*/  palette_phys; int /*<<< orphan*/  palette_cpu; int /*<<< orphan*/  palette_size; TYPE_1__ fb; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vt8500lcd_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct vt8500lcd_info* FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct vt8500lcd_info *fbi = FUNC4(pdev);
	struct resource *res;
	int irq;

	FUNC9(&fbi->fb);

	FUNC10(0, fbi->regbase);

	if (fbi->fb.cmap.len)
		FUNC1(&fbi->fb.cmap);

	irq = FUNC5(pdev, 0);
	FUNC2(irq, fbi);

	FUNC0(&pdev->dev, fbi->palette_size,
			  fbi->palette_cpu, fbi->palette_phys);

	FUNC3(fbi->regbase);

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	FUNC7(res->start, FUNC8(res));

	return 0;
}