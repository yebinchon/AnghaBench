#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sysdev; } ;
struct usb_hcd {void* localmem_pool; TYPE_1__ self; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MEMREMAP_WC ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,unsigned long,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

int FUNC8(struct usb_hcd *hcd, phys_addr_t phys_addr,
			    dma_addr_t dma, size_t size)
{
	int err;
	void *local_mem;

	hcd->localmem_pool = FUNC5(hcd->self.sysdev, 4,
						  FUNC4(hcd->self.sysdev),
						  FUNC3(hcd->self.sysdev));
	if (FUNC0(hcd->localmem_pool))
		return FUNC1(hcd->localmem_pool);

	local_mem = FUNC6(hcd->self.sysdev, phys_addr,
				  size, MEMREMAP_WC);
	if (FUNC0(local_mem))
		return FUNC1(local_mem);

	/*
	 * Here we pass a dma_addr_t but the arg type is a phys_addr_t.
	 * It's not backed by system memory and thus there's no kernel mapping
	 * for it.
	 */
	err = FUNC7(hcd->localmem_pool, (unsigned long)local_mem,
				dma, size, FUNC4(hcd->self.sysdev));
	if (err < 0) {
		FUNC2(hcd->self.sysdev, "gen_pool_add_virt failed with %d\n",
			err);
		return err;
	}

	return 0;
}