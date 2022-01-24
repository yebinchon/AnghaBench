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
typedef  int /*<<< orphan*/  u8 ;
struct sm501fb_info {int /*<<< orphan*/ ** fb; int /*<<< orphan*/ * pdata; scalar_t__ edid_data; struct device* dev; } ;
struct sm501_platdata {int /*<<< orphan*/ * fb; } ;
struct device {TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; struct sm501_platdata* platform_data; } ;

/* Variables and functions */
 int EDID_LENGTH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t HEAD_CRT ; 
 size_t HEAD_PANEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  driver_name_crt ; 
 int /*<<< orphan*/  driver_name_pnl ; 
 int /*<<< orphan*/  fb_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sm501fb_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 struct sm501fb_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct sm501fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct sm501fb_info*,size_t) ; 
 int /*<<< orphan*/  sm501fb_def_pdata ; 
 int FUNC9 (struct sm501fb_info*,size_t) ; 
 int FUNC10 (struct sm501fb_info*,struct platform_device*) ; 
 int FUNC11 (struct sm501fb_info*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sm501fb_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct sm501fb_info *info;
	struct device *dev = &pdev->dev;
	int ret;

	/* allocate our framebuffers */
	info = FUNC5(sizeof(*info), GFP_KERNEL);
	if (!info) {
		FUNC0(dev, "failed to allocate state\n");
		return -ENOMEM;
	}

	info->dev = dev = &pdev->dev;
	FUNC7(pdev, info);

	if (dev->parent->platform_data) {
		struct sm501_platdata *pd = dev->parent->platform_data;
		info->pdata = pd->fb;
	}

	if (info->pdata == NULL) {
		int found = 0;
#if defined(CONFIG_OF)
		struct device_node *np = pdev->dev.parent->of_node;
		const u8 *prop;
		const char *cp;
		int len;

		info->pdata = &sm501fb_def_pdata;
		if (np) {
			/* Get EDID */
			cp = of_get_property(np, "mode", &len);
			if (cp)
				strcpy(fb_mode, cp);
			prop = of_get_property(np, "edid", &len);
			if (prop && len == EDID_LENGTH) {
				info->edid_data = kmemdup(prop, EDID_LENGTH,
							  GFP_KERNEL);
				if (info->edid_data)
					found = 1;
			}
		}
#endif
		if (!found) {
			FUNC1(dev, "using default configuration data\n");
			info->pdata = &sm501fb_def_pdata;
		}
	}

	/* probe for the presence of each panel */

	ret = FUNC9(info, HEAD_CRT);
	if (ret < 0) {
		FUNC0(dev, "failed to probe CRT\n");
		goto err_alloc;
	}

	ret = FUNC9(info, HEAD_PANEL);
	if (ret < 0) {
		FUNC0(dev, "failed to probe PANEL\n");
		goto err_probed_crt;
	}

	if (info->fb[HEAD_PANEL] == NULL &&
	    info->fb[HEAD_CRT] == NULL) {
		FUNC0(dev, "no framebuffers found\n");
		ret = -ENODEV;
		goto err_alloc;
	}

	/* get the resources for both of the framebuffers */

	ret = FUNC10(info, pdev);
	if (ret) {
		FUNC0(dev, "cannot initialise SM501\n");
		goto err_probed_panel;
	}

	ret = FUNC11(info, HEAD_CRT, driver_name_crt);
	if (ret) {
		FUNC0(dev, "failed to start CRT\n");
		goto err_started;
	}

	ret = FUNC11(info, HEAD_PANEL, driver_name_pnl);
	if (ret) {
		FUNC0(dev, "failed to start Panel\n");
		goto err_started_crt;
	}

	/* we registered, return ok */
	return 0;

err_started_crt:
	FUNC14(info->fb[HEAD_CRT]);
	FUNC8(info, HEAD_CRT);

err_started:
	FUNC12(info);

err_probed_panel:
	FUNC2(info->fb[HEAD_PANEL]);

err_probed_crt:
	FUNC2(info->fb[HEAD_CRT]);

err_alloc:
	FUNC3(info);

	return ret;
}