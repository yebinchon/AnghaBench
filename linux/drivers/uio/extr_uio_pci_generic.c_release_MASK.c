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
struct uio_pci_generic_dev {int /*<<< orphan*/  pdev; } ;
struct uio_info {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct uio_pci_generic_dev* FUNC1 (struct uio_info*) ; 

__attribute__((used)) static int FUNC2(struct uio_info *info, struct inode *inode)
{
	struct uio_pci_generic_dev *gdev = FUNC1(info);

	/*
	 * This driver is insecure when used with devices doing DMA, but some
	 * people (mis)use it with such devices.
	 * Let's at least make sure DMA isn't left enabled after the userspace
	 * driver closes the fd.
	 * Note that there's a non-zero chance doing this will wedge the device
	 * at least until reset.
	 */
	FUNC0(gdev->pdev);
	return 0;
}