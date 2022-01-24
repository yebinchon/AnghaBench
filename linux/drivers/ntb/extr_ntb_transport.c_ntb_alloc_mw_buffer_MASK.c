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
struct ntb_transport_mw {scalar_t__ alloc_size; scalar_t__ buff_size; int /*<<< orphan*/  dma_addr; void* virt_addr; void* alloc_addr; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,scalar_t__) ; 
 void* FUNC4 (struct device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ntb_transport_mw *mw,
			       struct device *dma_dev, size_t align)
{
	dma_addr_t dma_addr;
	void *alloc_addr, *virt_addr;
	int rc;

	alloc_addr = FUNC4(dma_dev, mw->alloc_size,
					&dma_addr, GFP_KERNEL);
	if (!alloc_addr) {
		FUNC3(dma_dev, "Unable to alloc MW buff of size %zu\n",
			mw->alloc_size);
		return -ENOMEM;
	}
	virt_addr = alloc_addr;

	/*
	 * we must ensure that the memory address allocated is BAR size
	 * aligned in order for the XLAT register to take the value. This
	 * is a requirement of the hardware. It is recommended to setup CMA
	 * for BAR sizes equal or greater than 4MB.
	 */
	if (!FUNC1(dma_addr, align)) {
		if (mw->alloc_size > mw->buff_size) {
			virt_addr = FUNC2(alloc_addr, align);
			dma_addr = FUNC0(dma_addr, align);
		} else {
			rc = -ENOMEM;
			goto err;
		}
	}

	mw->alloc_addr = alloc_addr;
	mw->virt_addr = virt_addr;
	mw->dma_addr = dma_addr;

	return 0;

err:
	FUNC5(dma_dev, mw->alloc_size, alloc_addr, dma_addr);

	return rc;
}