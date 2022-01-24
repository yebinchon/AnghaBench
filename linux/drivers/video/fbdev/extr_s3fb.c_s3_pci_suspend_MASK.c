#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s3fb_info {scalar_t__ ref_count; int /*<<< orphan*/  open_lock; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int /*<<< orphan*/  device; struct s3fb_info* par; } ;
struct TYPE_4__ {scalar_t__ event; } ;
typedef  TYPE_1__ pm_message_t ;

/* Variables and functions */
 scalar_t__ PM_EVENT_FREEZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct fb_info* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct pci_dev* dev, pm_message_t state)
{
	struct fb_info *info = FUNC8(dev);
	struct s3fb_info *par = info->par;

	FUNC2(info->device, "suspend\n");

	FUNC0();
	FUNC4(&(par->open_lock));

	if ((state.event == PM_EVENT_FREEZE) || (par->ref_count == 0)) {
		FUNC5(&(par->open_lock));
		FUNC1();
		return 0;
	}

	FUNC3(info, 1);

	FUNC9(dev);
	FUNC7(dev);
	FUNC10(dev, FUNC6(dev, state));

	FUNC5(&(par->open_lock));
	FUNC1();

	return 0;
}