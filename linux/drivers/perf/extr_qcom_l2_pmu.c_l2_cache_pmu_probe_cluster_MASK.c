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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct l2cache_pmu {int /*<<< orphan*/  num_pmus; int /*<<< orphan*/  clusters; } ;
struct device {struct device* parent; } ;
struct cluster_pmu {unsigned long cluster_id; int irq; int on_cpu; int /*<<< orphan*/  pmu_lock; struct l2cache_pmu* l2cache_pmu; int /*<<< orphan*/  next; } ;
struct TYPE_2__ {int /*<<< orphan*/  unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IRQF_NOBALANCING ; 
 int IRQF_NO_THREAD ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 struct cluster_pmu* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*,struct cluster_pmu*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,unsigned long*) ; 
 int /*<<< orphan*/  l2_cache_handle_irq ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct device *dev, void *data)
{
	struct platform_device *pdev = FUNC12(dev->parent);
	struct platform_device *sdev = FUNC12(dev);
	struct l2cache_pmu *l2cache_pmu = data;
	struct cluster_pmu *cluster;
	struct acpi_device *device;
	unsigned long fw_cluster_id;
	int err;
	int irq;

	if (FUNC2(FUNC0(dev), &device))
		return -ENODEV;

	if (FUNC8(device->pnp.unique_id, 10, &fw_cluster_id) < 0) {
		FUNC3(&pdev->dev, "unable to read ACPI uid\n");
		return -ENODEV;
	}

	cluster = FUNC5(&pdev->dev, sizeof(*cluster), GFP_KERNEL);
	if (!cluster)
		return -ENOMEM;

	FUNC1(&cluster->next);
	FUNC9(&cluster->next, &l2cache_pmu->clusters);
	cluster->cluster_id = fw_cluster_id;

	irq = FUNC10(sdev, 0);
	if (irq < 0)
		return irq;
	FUNC7(irq, IRQ_NOAUTOEN);
	cluster->irq = irq;

	cluster->l2cache_pmu = l2cache_pmu;
	cluster->on_cpu = -1;

	err = FUNC6(&pdev->dev, irq, l2_cache_handle_irq,
			       IRQF_NOBALANCING | IRQF_NO_THREAD,
			       "l2-cache-pmu", cluster);
	if (err) {
		FUNC3(&pdev->dev,
			"Unable to request IRQ%d for L2 PMU counters\n", irq);
		return err;
	}

	FUNC4(&pdev->dev,
		"Registered L2 cache PMU cluster %ld\n", fw_cluster_id);

	FUNC11(&cluster->pmu_lock);

	l2cache_pmu->num_pmus++;

	return 0;
}