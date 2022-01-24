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
struct vfio_pci_ioeventfd {int count; int /*<<< orphan*/  addr; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *opaque, void *unused)
{
	struct vfio_pci_ioeventfd *ioeventfd = opaque;

	switch (ioeventfd->count) {
	case 1:
		FUNC3(ioeventfd->data, ioeventfd->addr);
		break;
	case 2:
		FUNC0(ioeventfd->data, ioeventfd->addr);
		break;
	case 4:
		FUNC1(ioeventfd->data, ioeventfd->addr);
		break;
#ifdef iowrite64
	case 8:
		vfio_iowrite64(ioeventfd->data, ioeventfd->addr);
		break;
#endif
	}

	return 0;
}