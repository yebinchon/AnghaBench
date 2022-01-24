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
struct pci_device_id {int dummy; } ;
struct pci_dev {int shpc_managed; } ;
struct controller {TYPE_1__* hpc_ops; int /*<<< orphan*/  slot_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_ctlr ) (struct controller*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,char*) ; 
 int FUNC5 (struct controller*) ; 
 int /*<<< orphan*/  FUNC6 (struct controller*) ; 
 struct controller* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct controller*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct controller*,struct pci_dev*) ; 
 int FUNC11 (struct controller*) ; 
 int /*<<< orphan*/  FUNC12 (struct controller*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int rc;
	struct controller *ctrl;

	if (!FUNC9(pdev))
		return -ENODEV;

	if (FUNC1(pdev))
		return -ENODEV;

	ctrl = FUNC7(sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		goto err_out_none;

	FUNC0(&ctrl->slot_list);

	rc = FUNC10(ctrl, pdev);
	if (rc) {
		FUNC3(ctrl, "Controller initialization failed\n");
		goto err_out_free_ctrl;
	}

	FUNC8(pdev, ctrl);

	/* Setup the slot information structures */
	rc = FUNC5(ctrl);
	if (rc) {
		FUNC4(ctrl, "Slot initialization failed\n");
		goto err_out_release_ctlr;
	}

	rc = FUNC11(ctrl);
	if (rc)
		goto err_cleanup_slots;

	pdev->shpc_managed = 1;
	return 0;

err_cleanup_slots:
	FUNC2(ctrl);
err_out_release_ctlr:
	ctrl->hpc_ops->release_ctlr(ctrl);
err_out_free_ctrl:
	FUNC6(ctrl);
err_out_none:
	return -ENODEV;
}