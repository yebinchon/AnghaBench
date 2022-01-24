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
struct TYPE_3__ {scalar_t__ Architecture; int /*<<< orphan*/  PRAMIN; } ;
struct riva_par {TYPE_1__ riva; int /*<<< orphan*/  ctrl_base; int /*<<< orphan*/  wc_cookie; int /*<<< orphan*/  EDID; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct fb_info {TYPE_2__ pixmap; int /*<<< orphan*/  screen_base; struct riva_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ NV_ARCH_03 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct riva_par*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pd)
{
	struct fb_info *info = FUNC6(pd);
	struct riva_par *par = info->par;
	
	FUNC0();

#ifdef CONFIG_FB_RIVA_I2C
	riva_delete_i2c_busses(par);
	kfree(par->EDID);
#endif

	FUNC10(info);

	FUNC8(info);
	FUNC2(par->wc_cookie);
	FUNC4(par->ctrl_base);
	FUNC4(info->screen_base);
	if (par->riva.Architecture == NV_ARCH_03)
		FUNC4(par->riva.PRAMIN);
	FUNC7(pd);
	FUNC5(info->pixmap.addr);
	FUNC3(info);
	FUNC1();
}