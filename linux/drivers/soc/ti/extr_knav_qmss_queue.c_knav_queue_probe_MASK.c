#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct knav_device {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/ * link_rams; struct device* dev; void* num_queues; void* base_id; int /*<<< orphan*/  pdsps; int /*<<< orphan*/  regions; int /*<<< orphan*/  pools; int /*<<< orphan*/  qmgrs; int /*<<< orphan*/  queue_ranges; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QMSS_66AK2G ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int device_ready ; 
 TYPE_1__* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* kdev ; 
 int /*<<< orphan*/  keystone_qmss_of_match ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  knav_queue_debug_ops ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,struct device_node*) ; 
 int FUNC8 (TYPE_1__*,struct device_node*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,struct device_node*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*,struct device_node*) ; 
 struct device_node* FUNC15 (struct device_node*,char*) ; 
 struct of_device_id* FUNC16 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*) ; 
 scalar_t__ FUNC19 (struct device_node*,char*,void**,int) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device_node *qmgrs, *queue_pools, *regions, *pdsps;
	const struct of_device_id *match;
	struct device *dev = &pdev->dev;
	u32 temp[2];
	int ret;

	if (!node) {
		FUNC2(dev, "device tree info unavailable\n");
		return -ENODEV;
	}

	kdev = FUNC3(dev, sizeof(struct knav_device), GFP_KERNEL);
	if (!kdev) {
		FUNC2(dev, "memory allocation failed\n");
		return -ENOMEM;
	}

	match = FUNC16(FUNC17(keystone_qmss_of_match), dev);
	if (match && match->data)
		kdev->version = QMSS_66AK2G;

	FUNC20(pdev, kdev);
	kdev->dev = dev;
	FUNC0(&kdev->queue_ranges);
	FUNC0(&kdev->qmgrs);
	FUNC0(&kdev->pools);
	FUNC0(&kdev->regions);
	FUNC0(&kdev->pdsps);

	FUNC22(&pdev->dev);
	ret = FUNC23(&pdev->dev);
	if (ret < 0) {
		FUNC2(dev, "Failed to enable QMSS\n");
		return ret;
	}

	if (FUNC19(node, "queue-range", temp, 2)) {
		FUNC2(dev, "queue-range not specified\n");
		ret = -ENODEV;
		goto err;
	}
	kdev->base_id    = temp[0];
	kdev->num_queues = temp[1];

	/* Initialize queue managers using device tree configuration */
	qmgrs =  FUNC15(node, "qmgrs");
	if (!qmgrs) {
		FUNC2(dev, "queue manager info not specified\n");
		ret = -ENODEV;
		goto err;
	}
	ret = FUNC8(kdev, qmgrs);
	FUNC18(qmgrs);
	if (ret)
		goto err;

	/* get pdsp configuration values from device tree */
	pdsps =  FUNC15(node, "pdsps");
	if (pdsps) {
		ret = FUNC7(kdev, pdsps);
		if (ret)
			goto err;

		ret = FUNC12(kdev);
		if (ret)
			goto err;
	}
	FUNC18(pdsps);

	/* get usable queue range values from device tree */
	queue_pools = FUNC15(node, "queue-pools");
	if (!queue_pools) {
		FUNC2(dev, "queue-pools not specified\n");
		ret = -ENODEV;
		goto err;
	}
	ret = FUNC14(kdev, queue_pools);
	FUNC18(queue_pools);
	if (ret)
		goto err;

	ret = FUNC5(kdev, "linkram0", &kdev->link_rams[0]);
	if (ret) {
		FUNC2(kdev->dev, "could not setup linking ram\n");
		goto err;
	}

	ret = FUNC5(kdev, "linkram1", &kdev->link_rams[1]);
	if (ret) {
		/*
		 * nothing really, we have one linking ram already, so we just
		 * live within our means
		 */
	}

	ret = FUNC10(kdev);
	if (ret)
		goto err;

	regions =  FUNC15(node, "descriptor-regions");
	if (!regions) {
		FUNC2(dev, "descriptor-regions not specified\n");
		goto err;
	}
	ret = FUNC11(kdev, regions);
	FUNC18(regions);
	if (ret)
		goto err;

	ret = FUNC9(kdev);
	if (ret < 0) {
		FUNC2(dev, "hwqueue initialization failed\n");
		goto err;
	}

	FUNC1("qmss", S_IFREG | S_IRUGO, NULL, NULL,
			    &knav_queue_debug_ops);
	device_ready = true;
	return 0;

err:
	FUNC13(kdev);
	FUNC6(kdev);
	FUNC4(kdev);
	FUNC24(&pdev->dev);
	FUNC21(&pdev->dev);
	return ret;
}