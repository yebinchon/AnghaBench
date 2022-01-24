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
struct pcistub_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  kref; int /*<<< orphan*/  dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcistub_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pcistub_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pcistub_device *FUNC6(struct pci_dev *dev)
{
	struct pcistub_device *psdev;

	FUNC0(&dev->dev, "pcistub_device_alloc\n");

	psdev = FUNC3(sizeof(*psdev), GFP_KERNEL);
	if (!psdev)
		return NULL;

	psdev->dev = FUNC4(dev);
	if (!psdev->dev) {
		FUNC1(psdev);
		return NULL;
	}

	FUNC2(&psdev->kref);
	FUNC5(&psdev->lock);

	return psdev;
}