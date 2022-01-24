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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	/*
	 * Kernel DMA protection is a feature where Thunderbolt security is
	 * handled natively using IOMMU. It is enabled when IOMMU is
	 * enabled and ACPI DMAR table has DMAR_PLATFORM_OPT_IN set.
	 */
	return FUNC2(buf, "%d\n",
		       FUNC1(&pci_bus_type) && FUNC0());
}