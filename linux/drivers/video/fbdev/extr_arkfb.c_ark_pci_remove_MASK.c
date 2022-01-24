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
struct fb_info {int /*<<< orphan*/  screen_base; int /*<<< orphan*/  cmap; struct arkfb_info* par; } ;
struct arkfb_info {int /*<<< orphan*/  dac; int /*<<< orphan*/  wc_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 struct fb_info* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	struct fb_info *info = FUNC4(dev);

	if (info) {
		struct arkfb_info *par = info->par;
		FUNC0(par->wc_cookie);
		FUNC1(par->dac);
		FUNC7(info);
		FUNC2(&info->cmap);

		FUNC5(dev, info->screen_base);
		FUNC6(dev);
/*		pci_disable_device(dev); */

		FUNC3(info);
	}
}