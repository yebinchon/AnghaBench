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
struct vfio_pci_device {struct pci_dev* pdev; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_4__ {unsigned char number; } ;

/* Variables and functions */
 int PCI_CLASS_DISPLAY_VGA ; 
 unsigned int VGA_RSRC_LEGACY_IO ; 
 unsigned int VGA_RSRC_LEGACY_MEM ; 
 unsigned int VGA_RSRC_NORMAL_IO ; 
 unsigned int VGA_RSRC_NORMAL_MEM ; 
 unsigned char FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct pci_dev* FUNC3 (int,struct pci_dev*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static unsigned int FUNC6(void *opaque, bool single_vga)
{
	struct vfio_pci_device *vdev = opaque;
	struct pci_dev *tmp = NULL, *pdev = vdev->pdev;
	unsigned char max_busnr;
	unsigned int decodes;

	if (single_vga || !FUNC5() || FUNC4(pdev->bus))
		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM |
		       VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM;

	max_busnr = FUNC0(pdev->bus);
	decodes = VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;

	while ((tmp = FUNC3(PCI_CLASS_DISPLAY_VGA << 8, tmp)) != NULL) {
		if (tmp == pdev ||
		    FUNC2(tmp->bus) != FUNC2(pdev->bus) ||
		    FUNC4(tmp->bus))
			continue;

		if (tmp->bus->number >= pdev->bus->number &&
		    tmp->bus->number <= max_busnr) {
			FUNC1(tmp);
			decodes |= VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM;
			break;
		}
	}

	return decodes;
}