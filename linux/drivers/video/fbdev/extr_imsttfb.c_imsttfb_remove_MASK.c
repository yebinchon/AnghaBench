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
struct imstt_par {int /*<<< orphan*/  dc_regs; int /*<<< orphan*/  cmap_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  smem_start; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_base; struct imstt_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct fb_info *info = FUNC2(pdev);
	struct imstt_par *par = info->par;
	int size = FUNC3(pdev, 0);

	FUNC5(info);
	FUNC1(par->cmap_regs);
	FUNC1(par->dc_regs);
	FUNC1(info->screen_base);
	FUNC4(info->fix.smem_start, size);
	FUNC0(info);
}