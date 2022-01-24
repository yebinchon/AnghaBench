#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  smem_len; } ;
struct TYPE_5__ {TYPE_1__ fix; int /*<<< orphan*/  cmap; } ;
struct xilinxfb_drvdata {int flags; int /*<<< orphan*/  dcr_len; int /*<<< orphan*/  dcr_host; int /*<<< orphan*/  fb_virt; int /*<<< orphan*/  fb_phys; TYPE_2__ info; scalar_t__ fb_alloced; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int BUS_ACCESS_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_CTRL ; 
 int /*<<< orphan*/  VESA_POWERDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xilinxfb_drvdata* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct xilinxfb_drvdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct xilinxfb_drvdata *drvdata = FUNC2(dev);

#if !defined(CONFIG_FRAMEBUFFER_CONSOLE) && defined(CONFIG_LOGO)
	xilinx_fb_blank(VESA_POWERDOWN, &drvdata->info);
#endif

	FUNC6(&drvdata->info);

	FUNC4(&drvdata->info.cmap);

	if (drvdata->fb_alloced)
		FUNC3(dev, FUNC0(drvdata->info.fix.smem_len),
				  drvdata->fb_virt, drvdata->fb_phys);
	else
		FUNC5(drvdata->fb_virt);

	/* Turn off the display */
	FUNC8(drvdata, REG_CTRL, 0);

#ifdef CONFIG_PPC_DCR
	/* Release the resources, as allocated based on interface */
	if (!(drvdata->flags & BUS_ACCESS_FLAG))
		dcr_unmap(drvdata->dcr_host, drvdata->dcr_len);
#endif

	return 0;
}