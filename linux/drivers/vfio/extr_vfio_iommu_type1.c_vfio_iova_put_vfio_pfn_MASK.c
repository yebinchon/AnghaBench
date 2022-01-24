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
struct vfio_pfn {int /*<<< orphan*/  pfn; int /*<<< orphan*/  ref_count; } ;
struct vfio_dma {int /*<<< orphan*/  prot; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_dma*,struct vfio_pfn*) ; 

__attribute__((used)) static int FUNC3(struct vfio_dma *dma, struct vfio_pfn *vpfn)
{
	int ret = 0;

	if (FUNC0(&vpfn->ref_count)) {
		ret = FUNC1(vpfn->pfn, dma->prot);
		FUNC2(dma, vpfn);
	}
	return ret;
}