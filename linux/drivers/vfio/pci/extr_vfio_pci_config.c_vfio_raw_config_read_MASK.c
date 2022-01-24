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
struct vfio_pci_device {int /*<<< orphan*/  pdev; } ;
struct perm_bits {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct vfio_pci_device *vdev, int pos,
				int count, struct perm_bits *perm,
				int offset, __le32 *val)
{
	int ret;

	ret = FUNC0(vdev->pdev, pos, val, count);
	if (ret)
		return ret;

	return count;
}