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
typedef  int u32 ;
struct sstfb_par {int vgapass; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct fb_info {struct sstfb_par* par; } ;

/* Variables and functions */
 int DIS_VGA_PASSTHROUGH ; 
 int /*<<< orphan*/  FBIINIT0 ; 
 int PCI_EN_INIT_WR ; 
 int /*<<< orphan*/  PCI_INIT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5( struct fb_info *info, int enable )
{
	struct sstfb_par *par = info->par;
	struct pci_dev *sst_dev = par->dev;
	u32 fbiinit0, tmp;

	enable = enable ? 1:0;
	if (par->vgapass == enable)
		return;
	par->vgapass = enable;

	FUNC1(sst_dev, PCI_INIT_ENABLE, &tmp);
	FUNC2(sst_dev, PCI_INIT_ENABLE,
			       tmp | PCI_EN_INIT_WR );
	fbiinit0 = FUNC3 (FBIINIT0);
	if (par->vgapass) {
		FUNC4(FBIINIT0, fbiinit0 & ~DIS_VGA_PASSTHROUGH);
		FUNC0(info, "Enabling VGA pass-through\n");
	} else {
		FUNC4(FBIINIT0, fbiinit0 | DIS_VGA_PASSTHROUGH);
		FUNC0(info, "Disabling VGA pass-through\n");
	}
	FUNC2(sst_dev, PCI_INIT_ENABLE, tmp);
}