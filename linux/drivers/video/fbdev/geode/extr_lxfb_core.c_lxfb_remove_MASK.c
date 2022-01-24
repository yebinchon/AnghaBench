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
struct lxfb_par {int /*<<< orphan*/  vp_regs; int /*<<< orphan*/  dc_regs; int /*<<< orphan*/  gp_regs; } ;
struct fb_info {int /*<<< orphan*/  cmap; int /*<<< orphan*/  screen_base; struct lxfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct fb_info *info = FUNC3(pdev);
	struct lxfb_par *par = info->par;

	FUNC5(info);

	FUNC2(info->screen_base);
	FUNC4(pdev, 0);

	FUNC2(par->gp_regs);
	FUNC4(pdev, 1);

	FUNC2(par->dc_regs);
	FUNC4(pdev, 2);

	FUNC2(par->vp_regs);
	FUNC4(pdev, 3);

	FUNC0(&info->cmap);
	FUNC1(info);
}