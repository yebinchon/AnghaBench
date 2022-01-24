#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct td {int dummy; } ;
struct fhci_hcd {scalar_t__ active_urbs; TYPE_2__* process_done_task; int /*<<< orphan*/  empty_tds; int /*<<< orphan*/  empty_eds; void* vroot_hub; TYPE_1__* hc_list; } ;
struct ed {int dummy; } ;
struct TYPE_4__ {unsigned long data; } ;
struct TYPE_3__ {int /*<<< orphan*/  done_list; int /*<<< orphan*/  intr_list; int /*<<< orphan*/  iso_list; int /*<<< orphan*/  bulk_list; int /*<<< orphan*/  ctrl_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_EDS ; 
 int MAX_TDS ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_hcd*,struct ed*) ; 
 int /*<<< orphan*/  FUNC3 (struct fhci_hcd*,struct td*) ; 
 TYPE_2__ fhci_tasklet ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fhci_hcd *fhci)
{
	int i;

	fhci->hc_list = FUNC5(sizeof(*fhci->hc_list), GFP_KERNEL);
	if (!fhci->hc_list)
		goto err;

	FUNC0(&fhci->hc_list->ctrl_list);
	FUNC0(&fhci->hc_list->bulk_list);
	FUNC0(&fhci->hc_list->iso_list);
	FUNC0(&fhci->hc_list->intr_list);
	FUNC0(&fhci->hc_list->done_list);

	fhci->vroot_hub = FUNC5(sizeof(*fhci->vroot_hub), GFP_KERNEL);
	if (!fhci->vroot_hub)
		goto err;

	FUNC0(&fhci->empty_eds);
	FUNC0(&fhci->empty_tds);

	/* initialize work queue to handle done list */
	fhci_tasklet.data = (unsigned long)fhci;
	fhci->process_done_task = &fhci_tasklet;

	for (i = 0; i < MAX_TDS; i++) {
		struct td *td;

		td = FUNC4(sizeof(*td), GFP_KERNEL);
		if (!td)
			goto err;
		FUNC3(fhci, td);
	}
	for (i = 0; i < MAX_EDS; i++) {
		struct ed *ed;

		ed = FUNC4(sizeof(*ed), GFP_KERNEL);
		if (!ed)
			goto err;
		FUNC2(fhci, ed);
	}

	fhci->active_urbs = 0;
	return 0;
err:
	FUNC1(fhci);
	return -ENOMEM;
}