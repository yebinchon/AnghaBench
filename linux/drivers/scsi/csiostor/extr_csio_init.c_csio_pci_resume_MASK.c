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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct csio_lnode {int /*<<< orphan*/  portid; } ;
struct csio_hw {int num_pports; int /*<<< orphan*/  lock; TYPE_1__* pport; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*) ; 
 scalar_t__ FUNC3 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*) ; 
 struct csio_lnode* FUNC7 (struct csio_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 struct csio_hw* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct pci_dev *pdev)
{
	struct csio_hw *hw = FUNC9(pdev);
	struct csio_lnode *ln;
	int rv = 0;
	int i;

	/* Bring the LINK UP and Resume IO */

	for (i = 0; i < hw->num_pports; i++) {
		ln = FUNC7(hw, &pdev->dev, true, NULL);
		if (!ln) {
			rv = -ENODEV;
			break;
		}
		/* Initialize portid */
		ln->portid = hw->pport[i].portid;

		FUNC10(&hw->lock);
		if (FUNC3(ln) != 0)
			rv = -ENODEV;
		FUNC11(&hw->lock);

		if (rv)
			break;

		FUNC2(ln);
	}

	if (rv)
		goto err_resume_exit;

	return;

err_resume_exit:
	FUNC4(hw);
	FUNC10(&hw->lock);
	FUNC1(hw);
	FUNC11(&hw->lock);
	FUNC6(hw);
	FUNC5(hw, 0);
	FUNC0(hw);
	FUNC8(&pdev->dev, "resume of device failed: %d\n", rv);
}