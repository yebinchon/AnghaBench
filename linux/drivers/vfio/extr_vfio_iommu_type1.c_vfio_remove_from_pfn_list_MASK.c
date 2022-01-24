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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfio_pfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_dma*,struct vfio_pfn*) ; 

__attribute__((used)) static void FUNC2(struct vfio_dma *dma,
				      struct vfio_pfn *vpfn)
{
	FUNC1(dma, vpfn);
	FUNC0(vpfn);
}