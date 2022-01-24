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
struct savagefb_par {int pm_state; } ;
struct pci_dev {int dummy; } ;
struct fb_info {struct savagefb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int PM_EVENT_FREEZE ; 
 int PM_EVENT_ON ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 struct fb_info* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC10 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct fb_info*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev* dev)
{
	struct fb_info *info = FUNC5(dev);
	struct savagefb_par *par = info->par;
	int cur_state = par->pm_state;

	FUNC0("savage_resume");

	par->pm_state = PM_EVENT_ON;

	/*
	 * The adapter was not powered down coming back from a
	 * PM_EVENT_FREEZE.
	 */
	if (cur_state == PM_EVENT_FREEZE) {
		FUNC8(dev, PCI_D0);
		return 0;
	}

	FUNC1();

	FUNC8(dev, PCI_D0);
	FUNC6(dev);

	if (FUNC4(dev))
		FUNC0("err");

	FUNC7(dev);
	FUNC9(par);
	FUNC10(par);
	FUNC12(info);
	FUNC3(info, 0);
	FUNC11(FB_BLANK_UNBLANK, info);
	FUNC2();

	return 0;
}