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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct eg20t_port {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct eg20t_port* FUNC0 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,struct eg20t_port*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev,
					const struct pci_device_id *id)
{
	int ret;
	struct eg20t_port *priv;

	ret = FUNC3(pdev);
	if (ret < 0)
		goto probe_error;

	priv = FUNC0(pdev, id);
	if (!priv) {
		ret = -EBUSY;
		goto probe_disable_device;
	}
	FUNC4(pdev, priv);

	return ret;

probe_disable_device:
	FUNC2(pdev);
	FUNC1(pdev);
probe_error:
	return ret;
}