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
struct vmd_dev {TYPE_1__* dev; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct device*) ; 
 struct vmd_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device *FUNC2(struct device *dev)
{
	struct pci_dev *pdev = FUNC0(dev);
	struct vmd_dev *vmd = FUNC1(pdev->bus);

	return &vmd->dev->dev;
}