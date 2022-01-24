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
struct pci_dev {int dummy; } ;
struct kyrofb_info {int /*<<< orphan*/  wc_cookie; int /*<<< orphan*/  regbase; } ;
struct fb_info {int /*<<< orphan*/  screen_base; struct kyrofb_info* par; } ;
struct TYPE_2__ {scalar_t__ ulOverlayOffset; scalar_t__ ulNextFreeVidMem; int /*<<< orphan*/  pSTGReg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ deviceInfo ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct fb_info *info = FUNC6(pdev);
	struct kyrofb_info *par = info->par;

	/* Reset the board */
	FUNC2(deviceInfo.pSTGReg);
	FUNC0(deviceInfo.pSTGReg);

	/* Sync up the PLL */
	FUNC1(deviceInfo.pSTGReg, pdev);

	deviceInfo.ulNextFreeVidMem = 0;
	deviceInfo.ulOverlayOffset = 0;

	FUNC5(info->screen_base);
	FUNC5(par->regbase);

	FUNC3(par->wc_cookie);

	FUNC7(info);
	FUNC4(info);
}