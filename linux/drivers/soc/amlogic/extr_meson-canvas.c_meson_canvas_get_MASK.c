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
struct meson_canvas {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct meson_canvas* FUNC0 (int /*<<< orphan*/ ) ; 
 struct meson_canvas* FUNC1 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct meson_canvas *FUNC5(struct device *dev)
{
	struct device_node *canvas_node;
	struct platform_device *canvas_pdev;
	struct meson_canvas *canvas;

	canvas_node = FUNC4(dev->of_node, "amlogic,canvas", 0);
	if (!canvas_node)
		return FUNC0(-ENODEV);

	canvas_pdev = FUNC2(canvas_node);
	if (!canvas_pdev) {
		FUNC3(canvas_node);
		return FUNC0(-EPROBE_DEFER);
	}

	FUNC3(canvas_node);

	/*
	 * If priv is NULL, it's probably because the canvas hasn't
	 * properly initialized. Bail out with -EINVAL because, in the
	 * current state, this driver probe cannot return -EPROBE_DEFER
	 */
	canvas = FUNC1(&canvas_pdev->dev);
	if (!canvas)
		return FUNC0(-EINVAL);

	return canvas;
}