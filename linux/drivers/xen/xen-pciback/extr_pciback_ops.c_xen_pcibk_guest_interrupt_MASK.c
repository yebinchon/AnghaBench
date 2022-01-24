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
struct xen_pcibk_dev_data {int handled; scalar_t__ ack_intr; int /*<<< orphan*/  irq_name; scalar_t__ isr_on; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 struct xen_pcibk_dev_data* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct pci_dev *dev = (struct pci_dev *)dev_id;
	struct xen_pcibk_dev_data *dev_data = FUNC0(dev);

	if (dev_data->isr_on && dev_data->ack_intr) {
		dev_data->handled++;
		if ((dev_data->handled % 1000) == 0) {
			if (FUNC2(irq)) {
				FUNC1("%s IRQ line is not shared "
					"with other domains. Turning ISR off\n",
					 dev_data->irq_name);
				dev_data->ack_intr = 0;
			}
		}
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}