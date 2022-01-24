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
struct rproc {int has_iommu; struct keystone_rproc* priv; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct keystone_rproc {int irq_ring; int irq_fault; int kick_gpio; int /*<<< orphan*/  reset; struct device* dev; struct rproc* rproc; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 char* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct keystone_rproc*) ; 
 int FUNC9 (struct platform_device*,struct keystone_rproc*) ; 
 int FUNC10 (struct platform_device*,struct keystone_rproc*) ; 
 int /*<<< orphan*/  keystone_rproc_ops ; 
 int FUNC11 (struct device_node*,char*) ; 
 int FUNC12 (struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 void* FUNC15 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct keystone_rproc*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (struct rproc*) ; 
 struct rproc* FUNC24 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*,int) ; 
 int FUNC27 (char*) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct keystone_rproc *ksproc;
	struct rproc *rproc;
	int dsp_id;
	char *fw_name = NULL;
	char *template = "keystone-dsp%d-fw";
	int name_len = 0;
	int ret = 0;

	if (!np) {
		FUNC3(dev, "only DT-based devices are supported\n");
		return -ENODEV;
	}

	dsp_id = FUNC11(np, "rproc");
	if (dsp_id < 0) {
		FUNC5(dev, "device does not have an alias id\n");
		return dsp_id;
	}

	/* construct a custom default fw name - subject to change in future */
	name_len = FUNC27(template); /* assuming a single digit alias */
	fw_name = FUNC6(dev, name_len, GFP_KERNEL);
	if (!fw_name)
		return -ENOMEM;
	FUNC26(fw_name, name_len, template, dsp_id);

	rproc = FUNC24(dev, FUNC4(dev), &keystone_rproc_ops, fw_name,
			    sizeof(*ksproc));
	if (!rproc)
		return -ENOMEM;

	rproc->has_iommu = false;
	ksproc = rproc->priv;
	ksproc->rproc = rproc;
	ksproc->dev = dev;

	ret = FUNC9(pdev, ksproc);
	if (ret)
		goto free_rproc;

	ksproc->reset = FUNC7(dev, NULL);
	if (FUNC0(ksproc->reset)) {
		ret = FUNC1(ksproc->reset);
		goto free_rproc;
	}

	/* enable clock for accessing DSP internal memories */
	FUNC18(dev);
	ret = FUNC19(dev);
	if (ret < 0) {
		FUNC3(dev, "failed to enable clock, status = %d\n", ret);
		FUNC20(dev);
		goto disable_rpm;
	}

	ret = FUNC10(pdev, ksproc);
	if (ret)
		goto disable_clk;

	ksproc->irq_ring = FUNC15(pdev, "vring");
	if (ksproc->irq_ring < 0) {
		ret = ksproc->irq_ring;
		goto disable_clk;
	}

	ksproc->irq_fault = FUNC15(pdev, "exception");
	if (ksproc->irq_fault < 0) {
		ret = ksproc->irq_fault;
		goto disable_clk;
	}

	ksproc->kick_gpio = FUNC12(np, "kick-gpios", 0, NULL);
	if (ksproc->kick_gpio < 0) {
		ret = ksproc->kick_gpio;
		FUNC3(dev, "failed to get gpio for virtio kicks, status = %d\n",
			ret);
		goto disable_clk;
	}

	if (FUNC13(dev))
		FUNC5(dev, "device does not have specific CMA pool\n");

	/* ensure the DSP is in reset before loading firmware */
	ret = FUNC22(ksproc->reset);
	if (ret < 0) {
		FUNC3(dev, "failed to get reset status, status = %d\n", ret);
		goto release_mem;
	} else if (ret == 0) {
		FUNC2(1, "device is not in reset\n");
		FUNC8(ksproc);
	}

	ret = FUNC23(rproc);
	if (ret) {
		FUNC3(dev, "failed to add register device with remoteproc core, status = %d\n",
			ret);
		goto release_mem;
	}

	FUNC16(pdev, ksproc);

	return 0;

release_mem:
	FUNC14(dev);
disable_clk:
	FUNC21(dev);
disable_rpm:
	FUNC17(dev);
free_rproc:
	FUNC25(rproc);
	return ret;
}