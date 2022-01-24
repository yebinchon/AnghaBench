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
struct s3fb_info {scalar_t__ ref_count; int /*<<< orphan*/  open_lock; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int /*<<< orphan*/  device; struct s3fb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pci_dev*) ; 
 struct fb_info* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fb_info*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev* dev)
{
	struct fb_info *info = FUNC8(dev);
	struct s3fb_info *par = info->par;
	int err;

	FUNC3(info->device, "resume\n");

	FUNC0();
	FUNC5(&(par->open_lock));

	if (par->ref_count == 0) {
		FUNC6(&(par->open_lock));
		FUNC1();
		return 0;
	}

	FUNC11(dev, PCI_D0);
	FUNC9(dev);
	err = FUNC7(dev);
	if (err) {
		FUNC6(&(par->open_lock));
		FUNC1();
		FUNC2(info->device, "error %d enabling device for resume\n", err);
		return err;
	}
	FUNC10(dev);

	FUNC12(info);
	FUNC4(info, 0);

	FUNC6(&(par->open_lock));
	FUNC1();

	return 0;
}