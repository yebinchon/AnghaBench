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
struct radeonfb_info {scalar_t__ mon1_modedb; scalar_t__ mon2_EDID; scalar_t__ mon1_EDID; int /*<<< orphan*/  fb_base; int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  wc_cookie; int /*<<< orphan*/  lvds_timer; int /*<<< orphan*/  init_state; TYPE_2__* pdev; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct radeonfb_info* par; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  edid1_attr ; 
 int /*<<< orphan*/  edid2_attr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 struct fb_info* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeonfb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeonfb_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeonfb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeonfb_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct fb_info*) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
        struct fb_info *info = FUNC7(pdev);
        struct radeonfb_info *rinfo = info->par;
 
        if (!rinfo)
                return;

	FUNC12(rinfo);

	if (rinfo->mon1_EDID)
		FUNC13(&rinfo->pdev->dev.kobj, &edid1_attr);
	if (rinfo->mon2_EDID)
		FUNC13(&rinfo->pdev->dev.kobj, &edid2_attr);

#if 0
	/* restore original state
	 * 
	 * Doesn't quite work yet, I suspect if we come from a legacy
	 * VGA mode (or worse, text mode), we need to do some VGA black
	 * magic here that I know nothing about. --BenH
	 */
        radeon_write_mode (rinfo, &rinfo->init_state, 1);
 #endif

	FUNC1(&rinfo->lvds_timer);
	FUNC0(rinfo->wc_cookie);
        FUNC14(info);

        FUNC11(rinfo);

        FUNC5(rinfo->mmio_base);
        FUNC5(rinfo->fb_base);
 
	FUNC8(pdev, 2);
	FUNC8(pdev, 0);

	FUNC6(rinfo->mon1_EDID);
	FUNC6(rinfo->mon2_EDID);
	if (rinfo->mon1_modedb)
		FUNC3(rinfo->mon1_modedb);
#ifdef CONFIG_FB_RADEON_I2C
	radeon_delete_i2c_busses(rinfo);
#endif        
	FUNC2(&info->cmap);
        FUNC4(info);
}