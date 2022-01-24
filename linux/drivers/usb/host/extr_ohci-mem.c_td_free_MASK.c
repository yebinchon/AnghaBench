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
struct td {int hwINFO; int /*<<< orphan*/  td_dma; struct td* td_hash; } ;
struct ohci_hcd {int /*<<< orphan*/  td_cache; struct td** td_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  TD_DONE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ohci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct td*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ohci_hcd*,char*,struct td*) ; 
 struct usb_hcd* FUNC5 (struct ohci_hcd*) ; 

__attribute__((used)) static void
FUNC6 (struct ohci_hcd *hc, struct td *td)
{
	struct td	**prev = &hc->td_hash [FUNC0 (td->td_dma)];
	struct usb_hcd	*hcd = FUNC5(hc);

	while (*prev && *prev != td)
		prev = &(*prev)->td_hash;
	if (*prev)
		*prev = td->td_hash;
	else if ((td->hwINFO & FUNC1(hc, TD_DONE)) != 0)
		FUNC4 (hc, "no hash for td %p\n", td);

	if (hcd->localmem_pool)
		FUNC3(hcd->localmem_pool, (unsigned long)td,
			      sizeof(*td));
	else
		FUNC2(hc->td_cache, td, td->td_dma);
}