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
struct pci_dev {int dummy; } ;
struct parport_serial_private {int num_par; int /*<<< orphan*/ * port; scalar_t__ serial; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct parport_serial_private* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	struct parport_serial_private *priv = FUNC1 (dev);
	int i;

	// Serial ports
	if (priv->serial)
		FUNC2(priv->serial);

	// Parallel ports
	for (i = 0; i < priv->num_par; i++)
		FUNC0 (priv->port[i]);

	return;
}