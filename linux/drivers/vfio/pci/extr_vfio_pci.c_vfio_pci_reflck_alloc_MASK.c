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
struct vfio_pci_reflck {int /*<<< orphan*/  lock; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct vfio_pci_reflck* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vfio_pci_reflck* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vfio_pci_reflck *FUNC4(void)
{
	struct vfio_pci_reflck *reflck;

	reflck = FUNC2(sizeof(*reflck), GFP_KERNEL);
	if (!reflck)
		return FUNC0(-ENOMEM);

	FUNC1(&reflck->kref);
	FUNC3(&reflck->lock);

	return reflck;
}