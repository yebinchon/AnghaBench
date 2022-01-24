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
struct vfio_pfn {unsigned long pfn; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  iova; } ;
struct vfio_dma {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct vfio_pfn* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_dma*,struct vfio_pfn*) ; 

__attribute__((used)) static int FUNC3(struct vfio_dma *dma, dma_addr_t iova,
				unsigned long pfn)
{
	struct vfio_pfn *vpfn;

	vpfn = FUNC1(sizeof(*vpfn), GFP_KERNEL);
	if (!vpfn)
		return -ENOMEM;

	vpfn->iova = iova;
	vpfn->pfn = pfn;
	FUNC0(&vpfn->ref_count, 1);
	FUNC2(dma, vpfn);
	return 0;
}