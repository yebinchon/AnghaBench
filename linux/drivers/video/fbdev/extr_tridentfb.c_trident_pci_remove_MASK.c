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
struct tridentfb_par {int /*<<< orphan*/  io_virt; int /*<<< orphan*/  ddc_adapter; scalar_t__ ddc_registered; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct fb_info {int /*<<< orphan*/  cmap; TYPE_1__ pixmap; int /*<<< orphan*/  screen_base; struct tridentfb_par* par; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmio_len; int /*<<< orphan*/  mmio_start; int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ tridentfb_fix ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	struct fb_info *info = FUNC5(dev);
	struct tridentfb_par *par = info->par;

	FUNC7(info);
	if (par->ddc_registered)
		FUNC2(&par->ddc_adapter);
	FUNC3(par->io_virt);
	FUNC3(info->screen_base);
	FUNC6(tridentfb_fix.smem_start, tridentfb_fix.smem_len);
	FUNC6(tridentfb_fix.mmio_start, tridentfb_fix.mmio_len);
	FUNC4(info->pixmap.addr);
	FUNC0(&info->cmap);
	FUNC1(info);
}