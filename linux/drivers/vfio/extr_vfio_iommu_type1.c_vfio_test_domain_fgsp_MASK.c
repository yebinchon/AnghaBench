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
struct vfio_domain {int prot; int fgsp; int /*<<< orphan*/  domain; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 int PAGE_SIZE ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 struct page* FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static void FUNC6(struct vfio_domain *domain)
{
	struct page *pages;
	int ret, order = FUNC2(PAGE_SIZE * 2);

	pages = FUNC1(GFP_KERNEL | __GFP_ZERO, order);
	if (!pages)
		return;

	ret = FUNC3(domain->domain, 0, FUNC5(pages), PAGE_SIZE * 2,
			IOMMU_READ | IOMMU_WRITE | domain->prot);
	if (!ret) {
		size_t unmapped = FUNC4(domain->domain, 0, PAGE_SIZE);

		if (unmapped == PAGE_SIZE)
			FUNC4(domain->domain, PAGE_SIZE, PAGE_SIZE);
		else
			domain->fgsp = true;
	}

	FUNC0(pages, order);
}