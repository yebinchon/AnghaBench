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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct parport_serial_private {int num_par; int /*<<< orphan*/ * port; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct parport_serial_private* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct parport_serial_private*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,struct pci_device_id const*) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev,
				    const struct pci_device_id *id)
{
	struct parport_serial_private *priv;
	int err;

	priv = FUNC0(&dev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC3 (dev, priv);

	err = FUNC4(dev);
	if (err)
		return err;

	err = FUNC2(dev, id);
	if (err)
		return err;

	err = FUNC5(dev, id);
	if (err) {
		int i;
		for (i = 0; i < priv->num_par; i++)
			FUNC1 (priv->port[i]);
		return err;
	}

	return 0;
}