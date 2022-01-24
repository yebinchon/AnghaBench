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
struct tsi721_device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct tsi721_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct tsi721_device *priv = FUNC2(pdev);

	FUNC5(EXIT, &pdev->dev, "enter");

	FUNC3(priv);
	FUNC4(priv);
	FUNC0(pdev);
	FUNC1(pdev);
}