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
struct pm3_par {int /*<<< orphan*/  v_regs; int /*<<< orphan*/  wc_cookie; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct fb_fix_screeninfo {int /*<<< orphan*/  mmio_len; int /*<<< orphan*/  mmio_start; int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;
struct fb_info {TYPE_1__ pixmap; int /*<<< orphan*/  screen_base; int /*<<< orphan*/  cmap; struct pm3_par* par; struct fb_fix_screeninfo fix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	struct fb_info *info = FUNC5(dev);

	if (info) {
		struct fb_fix_screeninfo *fix = &info->fix;
		struct pm3_par *par = info->par;

		FUNC7(info);
		FUNC1(&info->cmap);

		FUNC0(par->wc_cookie);
		FUNC3(info->screen_base);
		FUNC6(fix->smem_start, fix->smem_len);
		FUNC3(par->v_regs);
		FUNC6(fix->mmio_start, fix->mmio_len);

		FUNC4(info->pixmap.addr);
		FUNC2(info);
	}
}