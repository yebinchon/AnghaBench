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
struct pci_dev {int dummy; } ;
struct nvidia_par {int /*<<< orphan*/  REGS; int /*<<< orphan*/  wc_cookie; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  modedb; } ;
struct fb_info {TYPE_1__ pixmap; TYPE_2__ monspecs; int /*<<< orphan*/  screen_base; struct nvidia_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvidia_par*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvidia_par*) ; 
 struct fb_info* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct fb_info*) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pd)
{
	struct fb_info *info = FUNC9(pd);
	struct nvidia_par *par = info->par;

	FUNC0();

	FUNC11(info);

	FUNC7(par);
	FUNC2(par->wc_cookie);
	FUNC5(info->screen_base);
	FUNC3(info->monspecs.modedb);
	FUNC8(par);
	FUNC5(par->REGS);
	FUNC10(pd);
	FUNC6(info->pixmap.addr);
	FUNC4(info);
	FUNC1();
}