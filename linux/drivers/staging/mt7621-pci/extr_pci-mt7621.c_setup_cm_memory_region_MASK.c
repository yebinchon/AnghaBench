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
struct resource {int end; int start; } ;
struct mt7621_pcie {struct device* dev; struct resource mem; } ;
struct device {int dummy; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int CM_GCR_REGn_MASK_CMTGT_IOCU0 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct mt7621_pcie *pcie)
{
	struct resource *mem_resource = &pcie->mem;
	struct device *dev = pcie->dev;
	resource_size_t mask;

	if (FUNC1(0)) {
		/*
		 * FIXME: hardware doesn't accept mask values with 1s after
		 * 0s (e.g. 0xffef), so it would be great to warn if that's
		 * about to happen
		 */
		mask = ~(mem_resource->end - mem_resource->start);

		FUNC4(mem_resource->start);
		FUNC5(mask | CM_GCR_REGn_MASK_CMTGT_IOCU0);
		FUNC0(dev, "PCI coherence region base: 0x%08llx, mask/settings: 0x%08llx\n",
			(unsigned long long)FUNC2(),
			(unsigned long long)FUNC3());
	}
}