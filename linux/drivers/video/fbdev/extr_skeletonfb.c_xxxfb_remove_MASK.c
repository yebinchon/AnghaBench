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
struct fb_info {int /*<<< orphan*/  cmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 struct fb_info* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	struct fb_info *info = FUNC2(dev);
	/* or platform_get_drvdata(pdev); */

	if (info) {
		FUNC3(info);
		FUNC0(&info->cmap);
		/* ... */
		FUNC1(info);
	}
}