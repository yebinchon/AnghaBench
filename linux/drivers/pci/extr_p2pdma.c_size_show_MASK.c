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
struct pci_dev {TYPE_1__* p2pdma; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,size_t) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct pci_dev *pdev = FUNC2(dev);
	size_t size = 0;

	if (pdev->p2pdma->pool)
		size = FUNC0(pdev->p2pdma->pool);

	return FUNC1(buf, PAGE_SIZE, "%zd\n", size);
}