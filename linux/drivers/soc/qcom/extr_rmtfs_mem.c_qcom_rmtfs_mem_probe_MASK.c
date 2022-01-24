#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct reserved_mem {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
struct qcom_scm_vmperm {void* perm; void* vmid; } ;
struct TYPE_12__ {int /*<<< orphan*/  devt; int /*<<< orphan*/ * class; void* id; int /*<<< orphan*/  release; int /*<<< orphan*/  groups; TYPE_5__* parent; } ;
struct TYPE_14__ {int /*<<< orphan*/  owner; } ;
struct qcom_rmtfs_mem {TYPE_1__ dev; TYPE_7__ cdev; int /*<<< orphan*/  perms; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; int /*<<< orphan*/  base; void* client_id; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMREMAP_WC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* QCOM_SCM_PERM_RW ; 
 void* QCOM_SCM_VMID_HLOS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC5 (TYPE_7__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,struct qcom_rmtfs_mem*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qcom_rmtfs_mem* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device_node*,char*,void**) ; 
 struct reserved_mem* FUNC15 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  qcom_rmtfs_mem_fops ; 
 int /*<<< orphan*/  qcom_rmtfs_mem_groups ; 
 int /*<<< orphan*/  qcom_rmtfs_mem_major ; 
 int /*<<< orphan*/  qcom_rmtfs_mem_release_device ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qcom_scm_vmperm*,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  rmtfs_class ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct qcom_scm_vmperm perms[2];
	struct reserved_mem *rmem;
	struct qcom_rmtfs_mem *rmtfs_mem;
	u32 client_id;
	u32 vmid;
	int ret;

	rmem = FUNC15(node);
	if (!rmem) {
		FUNC8(&pdev->dev, "failed to acquire memory region\n");
		return -EINVAL;
	}

	ret = FUNC14(node, "qcom,client-id", &client_id);
	if (ret) {
		FUNC8(&pdev->dev, "failed to parse \"qcom,client-id\"\n");
		return ret;

	}

	rmtfs_mem = FUNC13(sizeof(*rmtfs_mem), GFP_KERNEL);
	if (!rmtfs_mem)
		return -ENOMEM;

	rmtfs_mem->addr = rmem->base;
	rmtfs_mem->client_id = client_id;
	rmtfs_mem->size = rmem->size;

	FUNC11(&rmtfs_mem->dev);
	rmtfs_mem->dev.parent = &pdev->dev;
	rmtfs_mem->dev.groups = qcom_rmtfs_mem_groups;
	rmtfs_mem->dev.release = qcom_rmtfs_mem_release_device;

	rmtfs_mem->base = FUNC12(&rmtfs_mem->dev, rmtfs_mem->addr,
					rmtfs_mem->size, MEMREMAP_WC);
	if (FUNC1(rmtfs_mem->base)) {
		FUNC8(&pdev->dev, "failed to remap rmtfs_mem region\n");
		ret = FUNC4(rmtfs_mem->base);
		goto put_device;
	}

	FUNC7(&rmtfs_mem->cdev, &qcom_rmtfs_mem_fops);
	rmtfs_mem->cdev.owner = THIS_MODULE;

	FUNC10(&rmtfs_mem->dev, "qcom_rmtfs_mem%d", client_id);
	rmtfs_mem->dev.id = client_id;
	rmtfs_mem->dev.class = &rmtfs_class;
	rmtfs_mem->dev.devt = FUNC3(FUNC2(qcom_rmtfs_mem_major), client_id);

	ret = FUNC5(&rmtfs_mem->cdev, &rmtfs_mem->dev);
	if (ret) {
		FUNC8(&pdev->dev, "failed to add cdev: %d\n", ret);
		goto put_device;
	}

	ret = FUNC14(node, "qcom,vmid", &vmid);
	if (ret < 0 && ret != -EINVAL) {
		FUNC8(&pdev->dev, "failed to parse qcom,vmid\n");
		goto remove_cdev;
	} else if (!ret) {
		if (!FUNC18()) {
			ret = -EPROBE_DEFER;
			goto remove_cdev;
		}

		perms[0].vmid = QCOM_SCM_VMID_HLOS;
		perms[0].perm = QCOM_SCM_PERM_RW;
		perms[1].vmid = vmid;
		perms[1].perm = QCOM_SCM_PERM_RW;

		rmtfs_mem->perms = FUNC0(QCOM_SCM_VMID_HLOS);
		ret = FUNC17(rmtfs_mem->addr, rmtfs_mem->size,
					  &rmtfs_mem->perms, perms, 2);
		if (ret < 0) {
			FUNC8(&pdev->dev, "assign memory failed\n");
			goto remove_cdev;
		}
	}

	FUNC9(&pdev->dev, rmtfs_mem);

	return 0;

remove_cdev:
	FUNC6(&rmtfs_mem->cdev, &rmtfs_mem->dev);
put_device:
	FUNC16(&rmtfs_mem->dev);

	return ret;
}