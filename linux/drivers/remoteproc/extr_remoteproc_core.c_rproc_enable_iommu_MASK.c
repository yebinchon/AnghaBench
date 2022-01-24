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
struct TYPE_2__ {struct device* parent; } ;
struct rproc {struct iommu_domain* domain; int /*<<< orphan*/  has_iommu; TYPE_1__ dev; } ;
struct iommu_domain {int dummy; } ;
struct device {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct iommu_domain*,struct device*) ; 
 struct iommu_domain* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_domain*,int /*<<< orphan*/ ,struct rproc*) ; 
 int /*<<< orphan*/  rproc_iommu_fault ; 

__attribute__((used)) static int FUNC6(struct rproc *rproc)
{
	struct iommu_domain *domain;
	struct device *dev = rproc->dev.parent;
	int ret;

	if (!rproc->has_iommu) {
		FUNC0(dev, "iommu not present\n");
		return 0;
	}

	domain = FUNC3(dev->bus);
	if (!domain) {
		FUNC1(dev, "can't alloc iommu domain\n");
		return -ENOMEM;
	}

	FUNC5(domain, rproc_iommu_fault, rproc);

	ret = FUNC2(domain, dev);
	if (ret) {
		FUNC1(dev, "can't attach iommu device: %d\n", ret);
		goto free_domain;
	}

	rproc->domain = domain;

	return 0;

free_domain:
	FUNC4(domain);
	return ret;
}