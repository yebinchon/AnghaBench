#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  reset_work; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_CTRL_DEAD ; 
 int /*<<< orphan*/  NVME_CTRL_DELETING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 struct nvme_dev* FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct pci_dev *pdev)
{
	struct nvme_dev *dev = FUNC14(pdev);

	FUNC1(&dev->ctrl, NVME_CTRL_DELETING);
	FUNC15(pdev, NULL);

	if (!FUNC13(pdev)) {
		FUNC1(&dev->ctrl, NVME_CTRL_DEAD);
		FUNC2(dev, true);
		FUNC3(dev);
	}

	FUNC0(&dev->ctrl.reset_work);
	FUNC11(&dev->ctrl);
	FUNC10(&dev->ctrl);
	FUNC2(dev, true);
	FUNC8(dev);
	FUNC5(dev);
	FUNC3(dev);
	FUNC6(dev, 0);
	FUNC12(&dev->ctrl);
	FUNC9(dev);
	FUNC4(dev);
	FUNC7(&dev->ctrl);
}