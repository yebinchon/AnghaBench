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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct meson_canvas {int /*<<< orphan*/  lock; struct device* dev; int /*<<< orphan*/  supports_endianness; int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct meson_canvas*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 struct meson_canvas* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct resource *res;
	struct meson_canvas *canvas;
	struct device *dev = &pdev->dev;

	canvas = FUNC4(dev, sizeof(*canvas), GFP_KERNEL);
	if (!canvas)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	canvas->reg_base = FUNC3(dev, res);
	if (FUNC0(canvas->reg_base))
		return FUNC1(canvas->reg_base);

	canvas->supports_endianness = FUNC5(dev);

	canvas->dev = dev;
	FUNC7(&canvas->lock);
	FUNC2(dev, canvas);

	return 0;
}