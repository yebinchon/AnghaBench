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
struct usb_hcd {scalar_t__ localmem_pool; } ;
struct ohci_hcd {int /*<<< orphan*/  ed_cache; } ;
struct ed {int /*<<< orphan*/  dma; int /*<<< orphan*/  td_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ed* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ed* FUNC2 (scalar_t__,int,int /*<<< orphan*/ *,int) ; 
 struct usb_hcd* FUNC3 (struct ohci_hcd*) ; 

__attribute__((used)) static struct ed *
FUNC4 (struct ohci_hcd *hc, gfp_t mem_flags)
{
	dma_addr_t	dma;
	struct ed	*ed;
	struct usb_hcd	*hcd = FUNC3(hc);

	if (hcd->localmem_pool)
		ed = FUNC2(hcd->localmem_pool,
				sizeof(*ed), &dma, 16);
	else
		ed = FUNC1(hc->ed_cache, mem_flags, &dma);
	if (ed) {
		FUNC0 (&ed->td_list);
		ed->dma = dma;
	}
	return ed;
}