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
struct vfio_pfn {int dummy; } ;
struct vfio_dma {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 struct vfio_pfn* FUNC0 (struct vfio_dma*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vfio_dma*,struct vfio_pfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_dma*,int,int) ; 

__attribute__((used)) static int FUNC3(struct vfio_dma *dma, dma_addr_t iova,
				    bool do_accounting)
{
	int unlocked;
	struct vfio_pfn *vpfn = FUNC0(dma, iova);

	if (!vpfn)
		return 0;

	unlocked = FUNC1(dma, vpfn);

	if (do_accounting)
		FUNC2(dma, -unlocked, true);

	return unlocked;
}