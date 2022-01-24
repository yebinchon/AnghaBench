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
struct swoc_info {int /*<<< orphan*/  LinuxVer; int /*<<< orphan*/  LinuxSKU; int /*<<< orphan*/  rev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const struct device *dev, struct swoc_info *swocInfo)
{
	FUNC0(dev, "SWIMS: SWoC Rev: %02d\n", swocInfo->rev);
	FUNC0(dev, "SWIMS: Linux SKU: %04X\n", swocInfo->LinuxSKU);
	FUNC0(dev, "SWIMS: Linux Version: %04X\n", swocInfo->LinuxVer);
}