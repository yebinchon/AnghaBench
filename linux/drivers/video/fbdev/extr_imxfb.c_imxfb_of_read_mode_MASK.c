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
typedef  int u32 ;
struct fb_videomode {int /*<<< orphan*/ * name; } ;
struct imx_fb_videomode {int bpp; int pcr; int /*<<< orphan*/  aus_mode; struct fb_videomode mode; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OF_USE_NATIVE_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device_node*,struct fb_videomode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ **) ; 
 int FUNC4 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct device_node *np,
		struct imx_fb_videomode *imxfb_mode)
{
	int ret;
	struct fb_videomode *of_mode = &imxfb_mode->mode;
	u32 bpp;
	u32 pcr;

	ret = FUNC3(np, "model", &of_mode->name);
	if (ret)
		of_mode->name = NULL;

	ret = FUNC1(np, of_mode, OF_USE_NATIVE_MODE);
	if (ret) {
		FUNC0(dev, "Failed to get videomode from DT\n");
		return ret;
	}

	ret = FUNC4(np, "bits-per-pixel", &bpp);
	ret |= FUNC4(np, "fsl,pcr", &pcr);

	if (ret) {
		FUNC0(dev, "Failed to read bpp and pcr from DT\n");
		return -EINVAL;
	}

	if (bpp < 1 || bpp > 255) {
		FUNC0(dev, "Bits per pixel have to be between 1 and 255\n");
		return -EINVAL;
	}

	imxfb_mode->bpp = bpp;
	imxfb_mode->pcr = pcr;

	/*
	 * fsl,aus-mode is optional
	 */
	imxfb_mode->aus_mode = FUNC2(np, "fsl,aus-mode");

	return 0;
}