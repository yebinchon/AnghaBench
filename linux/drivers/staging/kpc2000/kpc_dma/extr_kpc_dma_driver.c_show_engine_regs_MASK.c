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
struct platform_device {int dummy; } ;
struct kpc_dma_device {int /*<<< orphan*/  desc_completed; int /*<<< orphan*/  desc_next; int /*<<< orphan*/  desc_pool_last; int /*<<< orphan*/  desc_pool_first; scalar_t__ eng_regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct kpc_dma_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t  FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct kpc_dma_device *ldev;
	struct platform_device *pldev = FUNC3(dev);

	if (!pldev)
		return 0;
	ldev = FUNC0(pldev);
	if (!ldev)
		return 0;

	return FUNC2(buf, PAGE_SIZE,
		"EngineControlStatus      = 0x%08x\n"
		"RegNextDescPtr           = 0x%08x\n"
		"RegSWDescPtr             = 0x%08x\n"
		"RegCompletedDescPtr      = 0x%08x\n"
		"desc_pool_first          = %p\n"
		"desc_pool_last           = %p\n"
		"desc_next                = %p\n"
		"desc_completed           = %p\n",
		FUNC1(ldev->eng_regs + 1),
		FUNC1(ldev->eng_regs + 2),
		FUNC1(ldev->eng_regs + 3),
		FUNC1(ldev->eng_regs + 4),
		ldev->desc_pool_first,
		ldev->desc_pool_last,
		ldev->desc_next,
		ldev->desc_completed
	);
}