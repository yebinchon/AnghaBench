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
struct rproc {TYPE_1__ dev; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_domain*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC2(struct rproc *rproc)
{
	struct iommu_domain *domain = rproc->domain;
	struct device *dev = rproc->dev.parent;

	if (!domain)
		return;

	FUNC0(domain, dev);
	FUNC1(domain);
}