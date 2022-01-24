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
struct vt8623fb_info {int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  wc_cookie; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int /*<<< orphan*/  screen_base; int /*<<< orphan*/  cmap; struct vt8623fb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 struct fb_info* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	struct fb_info *info = FUNC3(dev);

	if (info) {
		struct vt8623fb_info *par = info->par;

		FUNC0(par->wc_cookie);
		FUNC6(info);
		FUNC1(&info->cmap);

		FUNC4(dev, info->screen_base);
		FUNC4(dev, par->mmio_base);
		FUNC5(dev);
/*		pci_disable_device(dev); */

		FUNC2(info);
	}
}