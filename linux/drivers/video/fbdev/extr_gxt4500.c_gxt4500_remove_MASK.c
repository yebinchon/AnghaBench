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
struct pci_dev {int dummy; } ;
struct gxt4500_par {int /*<<< orphan*/  regs; int /*<<< orphan*/  wc_cookie; } ;
struct fb_info {int /*<<< orphan*/  screen_base; int /*<<< orphan*/  cmap; struct gxt4500_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct fb_info *info = FUNC4(pdev);
	struct gxt4500_par *par;

	if (!info)
		return;
	par = info->par;
	FUNC8(info);
	FUNC0(par->wc_cookie);
	FUNC1(&info->cmap);
	FUNC3(par->regs);
	FUNC3(info->screen_base);
	FUNC7(FUNC6(pdev, 0),
			   FUNC5(pdev, 0));
	FUNC7(FUNC6(pdev, 1),
			   FUNC5(pdev, 1));
	FUNC2(info);
}