#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct savagefb_par {scalar_t__ pm_state; int /*<<< orphan*/  save; } ;
struct TYPE_10__ {scalar_t__ event; } ;
struct TYPE_7__ {TYPE_4__ power_state; } ;
struct TYPE_8__ {TYPE_1__ power; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct fb_info {TYPE_3__* fbops; struct savagefb_par* par; } ;
typedef  TYPE_4__ pm_message_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* fb_sync ) (struct fb_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 scalar_t__ PM_EVENT_FREEZE ; 
 scalar_t__ PM_EVENT_PRETHAW ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct fb_info* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC10 (struct savagefb_par*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct fb_info*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *dev, pm_message_t mesg)
{
	struct fb_info *info = FUNC6(dev);
	struct savagefb_par *par = info->par;

	FUNC0("savagefb_suspend");

	if (mesg.event == PM_EVENT_PRETHAW)
		mesg.event = PM_EVENT_FREEZE;
	par->pm_state = mesg.event;
	dev->dev.power.power_state = mesg;

	/*
	 * For PM_EVENT_FREEZE, do not power down so the console
	 * can remain active.
	 */
	if (mesg.event == PM_EVENT_FREEZE)
		return 0;

	FUNC1();
	FUNC3(info, 1);

	if (info->fbops->fb_sync)
		info->fbops->fb_sync(info);

	FUNC11(FB_BLANK_POWERDOWN, info);
	FUNC10(par, &par->save);
	FUNC9(par);
	FUNC7(dev);
	FUNC5(dev);
	FUNC8(dev, FUNC4(dev, mesg));
	FUNC2();

	return 0;
}