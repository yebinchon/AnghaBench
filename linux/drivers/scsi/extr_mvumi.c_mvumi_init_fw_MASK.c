#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mvumi_hba {int request_id_enabled; TYPE_1__* pdev; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  regs; int /*<<< orphan*/  handshake_page_phys; int /*<<< orphan*/  handshake_page; int /*<<< orphan*/ * instancet; void* max_sge; int /*<<< orphan*/  io_seq; } ;
struct TYPE_5__ {int device; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HSP_MAX_SIZE ; 
 void* MVUMI_MAX_SG_ENTRY ; 
 int /*<<< orphan*/  MV_DRIVER_NAME ; 
#define  PCI_DEVICE_ID_MARVELL_MV9143 129 
#define  PCI_DEVICE_ID_MARVELL_MV9580 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mvumi_hba*) ; 
 int FUNC6 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  mvumi_instance_9143 ; 
 int /*<<< orphan*/  mvumi_instance_9580 ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvumi_hba*) ; 
 scalar_t__ FUNC9 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mvumi_hba *mhba)
{
	int ret = 0;

	if (FUNC12(mhba->pdev, MV_DRIVER_NAME)) {
		FUNC1(&mhba->pdev->dev, "IO memory region busy!\n");
		return -EBUSY;
	}
	ret = FUNC7(mhba->pdev, mhba->base_addr);
	if (ret)
		goto fail_ioremap;

	switch (mhba->pdev->device) {
	case PCI_DEVICE_ID_MARVELL_MV9143:
		mhba->instancet = &mvumi_instance_9143;
		mhba->io_seq = 0;
		mhba->max_sge = MVUMI_MAX_SG_ENTRY;
		mhba->request_id_enabled = 1;
		break;
	case PCI_DEVICE_ID_MARVELL_MV9580:
		mhba->instancet = &mvumi_instance_9580;
		mhba->io_seq = 0;
		mhba->max_sge = MVUMI_MAX_SG_ENTRY;
		break;
	default:
		FUNC1(&mhba->pdev->dev, "device 0x%x not supported!\n",
							mhba->pdev->device);
		mhba->instancet = NULL;
		ret = -EINVAL;
		goto fail_alloc_mem;
	}
	FUNC0(&mhba->pdev->dev, "device id : %04X is found.\n",
							mhba->pdev->device);
	ret = FUNC6(mhba);
	if (ret) {
		FUNC1(&mhba->pdev->dev,
			"failed to allocate memory for reg\n");
		ret = -ENOMEM;
		goto fail_alloc_mem;
	}
	mhba->handshake_page = FUNC2(&mhba->pdev->dev,
			HSP_MAX_SIZE, &mhba->handshake_page_phys, GFP_KERNEL);
	if (!mhba->handshake_page) {
		FUNC1(&mhba->pdev->dev,
			"failed to allocate memory for handshake\n");
		ret = -ENOMEM;
		goto fail_alloc_page;
	}

	if (FUNC9(mhba)) {
		ret = -EINVAL;
		goto fail_ready_state;
	}
	ret = FUNC5(mhba);
	if (ret)
		goto fail_ready_state;

	return 0;

fail_ready_state:
	FUNC8(mhba);
	FUNC3(&mhba->pdev->dev, HSP_MAX_SIZE,
		mhba->handshake_page, mhba->handshake_page_phys);
fail_alloc_page:
	FUNC4(mhba->regs);
fail_alloc_mem:
	FUNC10(mhba->pdev, mhba->base_addr);
fail_ioremap:
	FUNC11(mhba->pdev);

	return ret;
}