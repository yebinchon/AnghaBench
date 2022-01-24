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
struct uio_info {char* name; char* version; TYPE_1__* mem; int /*<<< orphan*/  irqcontrol; int /*<<< orphan*/  handler; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  internal_addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uio_info*) ; 
 struct uio_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mf624_irq_handler ; 
 int /*<<< orphan*/  mf624_irqcontrol ; 
 scalar_t__ FUNC3 (struct pci_dev*,int,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct uio_info*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct uio_info*) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct uio_info *info;

	info = FUNC2(sizeof(struct uio_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	if (FUNC5(dev))
		goto out_free;

	if (FUNC7(dev, "mf624"))
		goto out_disable;

	info->name = "mf624";
	info->version = "0.0.1";

	/* Note: Datasheet says device uses BAR0, BAR1, BAR2 -- do not trust it */

	/* BAR0 */
	if (FUNC3(dev, 0, &info->mem[0], "PCI chipset, interrupts, status "
			    "bits, special functions"))
		goto out_release;
	/* BAR2 */
	if (FUNC3(dev, 2, &info->mem[1], "ADC, DAC, DIO"))
		goto out_unmap0;

	/* BAR4 */
	if (FUNC3(dev, 4, &info->mem[2], "Counter/timer chip"))
		goto out_unmap1;

	info->irq = dev->irq;
	info->irq_flags = IRQF_SHARED;
	info->handler = mf624_irq_handler;

	info->irqcontrol = mf624_irqcontrol;

	if (FUNC9(&dev->dev, info))
		goto out_unmap2;

	FUNC8(dev, info);

	return 0;

out_unmap2:
	FUNC0(info->mem[2].internal_addr);
out_unmap1:
	FUNC0(info->mem[1].internal_addr);
out_unmap0:
	FUNC0(info->mem[0].internal_addr);

out_release:
	FUNC6(dev);

out_disable:
	FUNC4(dev);

out_free:
	FUNC1(info);
	return -ENODEV;
}