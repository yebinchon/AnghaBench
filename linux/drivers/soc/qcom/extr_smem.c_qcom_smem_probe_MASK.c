#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct smem_region {int dummy; } ;
struct smem_header {int /*<<< orphan*/  reserved; int /*<<< orphan*/  initialized; } ;
struct qcom_smem {int num_regions; int /*<<< orphan*/  socinfo; int /*<<< orphan*/  hwlock; int /*<<< orphan*/  item_count; TYPE_1__* regions; TYPE_2__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {struct smem_header* virt_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
#define  SMEM_GLOBAL_HEAP_VERSION 129 
#define  SMEM_GLOBAL_PART_VERSION 128 
 scalar_t__ SMEM_HOST_APPS ; 
 scalar_t__ SMEM_HOST_COUNT ; 
 int /*<<< orphan*/  SMEM_ITEM_COUNT ; 
 struct qcom_smem* __smem ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 struct qcom_smem* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct qcom_smem*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct qcom_smem*) ; 
 int FUNC12 (struct qcom_smem*) ; 
 int FUNC13 (struct qcom_smem*,TYPE_2__*,char*,int) ; 
 int FUNC14 (struct qcom_smem*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct smem_header *header;
	struct qcom_smem *smem;
	size_t array_size;
	int num_regions;
	int hwlock_id;
	u32 version;
	int ret;

	num_regions = 1;
	if (FUNC7(pdev->dev.of_node, "qcom,rpm-msg-ram", NULL))
		num_regions++;

	array_size = num_regions * sizeof(struct smem_region);
	smem = FUNC4(&pdev->dev, sizeof(*smem) + array_size, GFP_KERNEL);
	if (!smem)
		return -ENOMEM;

	smem->dev = &pdev->dev;
	smem->num_regions = num_regions;

	ret = FUNC13(smem, &pdev->dev, "memory-region", 0);
	if (ret)
		return ret;

	if (num_regions > 1 && (ret = FUNC13(smem, &pdev->dev,
					"qcom,rpm-msg-ram", 1)))
		return ret;

	header = smem->regions[0].virt_base;
	if (FUNC6(header->initialized) != 1 ||
	    FUNC6(header->reserved)) {
		FUNC3(&pdev->dev, "SMEM is not initialized by SBL\n");
		return -EINVAL;
	}

	version = FUNC12(smem);
	switch (version >> 16) {
	case SMEM_GLOBAL_PART_VERSION:
		ret = FUNC14(smem);
		if (ret < 0)
			return ret;
		smem->item_count = FUNC11(smem);
		break;
	case SMEM_GLOBAL_HEAP_VERSION:
		smem->item_count = SMEM_ITEM_COUNT;
		break;
	default:
		FUNC3(&pdev->dev, "Unsupported SMEM version 0x%x\n", version);
		return -EINVAL;
	}

	FUNC0(SMEM_HOST_APPS >= SMEM_HOST_COUNT);
	ret = FUNC10(smem, SMEM_HOST_APPS);
	if (ret < 0 && ret != -ENOENT)
		return ret;

	hwlock_id = FUNC8(pdev->dev.of_node, 0);
	if (hwlock_id < 0) {
		if (hwlock_id != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "failed to retrieve hwlock\n");
		return hwlock_id;
	}

	smem->hwlock = FUNC5(hwlock_id);
	if (!smem->hwlock)
		return -ENXIO;

	__smem = smem;

	smem->socinfo = FUNC9(&pdev->dev, "qcom-socinfo",
						      PLATFORM_DEVID_NONE, NULL,
						      0);
	if (FUNC1(smem->socinfo))
		FUNC2(&pdev->dev, "failed to register socinfo device\n");

	return 0;
}