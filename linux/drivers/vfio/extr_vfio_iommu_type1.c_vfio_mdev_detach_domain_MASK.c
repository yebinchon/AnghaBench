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
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOMMU_DEV_FEAT_AUX ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_domain*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*,struct device*) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct iommu_domain *domain = data;
	struct device *iommu_device;

	iommu_device = FUNC3(dev);
	if (iommu_device) {
		if (FUNC2(iommu_device, IOMMU_DEV_FEAT_AUX))
			FUNC0(domain, iommu_device);
		else
			FUNC1(domain, iommu_device);
	}

	return 0;
}