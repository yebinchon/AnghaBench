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
struct sstfb_par {int /*<<< orphan*/  mmio_vbase; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int mmio_len; int /*<<< orphan*/  mmio_start; int /*<<< orphan*/  smem_start; } ;
struct fb_info {int /*<<< orphan*/  cmap; TYPE_1__ fix; int /*<<< orphan*/  screen_base; int /*<<< orphan*/  dev; struct sstfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/ * device_attrs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct sstfb_par *par;
	struct fb_info *info;

	info = FUNC4(pdev);
	par = info->par;
	
	FUNC0(info->dev, &device_attrs[0]);
	FUNC6(info);
	FUNC3(info->screen_base);
	FUNC3(par->mmio_vbase);
	FUNC5(info->fix.smem_start, 0x400000);
	FUNC5(info->fix.mmio_start, info->fix.mmio_len);
	FUNC1(&info->cmap);
	FUNC7(info);
	FUNC2(info);
}