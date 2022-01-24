#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  devt; } ;
struct switchtec_dev {TYPE_1__ dev; int /*<<< orphan*/  cdev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct switchtec_dev* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct switchtec_dev*) ; 
 int /*<<< orphan*/  switchtec_minor_ida ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct switchtec_dev *stdev = FUNC4(pdev);

	FUNC5(pdev, NULL);

	FUNC1(&stdev->cdev, &stdev->dev);
	FUNC3(&switchtec_minor_ida, FUNC0(stdev->dev.devt));
	FUNC2(&stdev->dev, "unregistered.\n");
	FUNC7(stdev);
	FUNC6(&stdev->dev);
}