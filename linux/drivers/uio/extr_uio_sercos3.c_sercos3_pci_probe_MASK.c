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
struct uio_info {char* name; char* version; TYPE_1__* mem; int /*<<< orphan*/  irqcontrol; int /*<<< orphan*/  handler; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq; struct uio_info* priv; int /*<<< orphan*/  ier0_cache_lock; } ;
struct sercos3_priv {char* name; char* version; TYPE_1__* mem; int /*<<< orphan*/  irqcontrol; int /*<<< orphan*/  handler; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq; struct sercos3_priv* priv; int /*<<< orphan*/  ier0_cache_lock; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {scalar_t__ internal_addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct uio_info*) ; 
 struct uio_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct uio_info*) ; 
 int /*<<< orphan*/  sercos3_handler ; 
 int /*<<< orphan*/  sercos3_irqcontrol ; 
 scalar_t__ FUNC8 (struct pci_dev*,struct uio_info*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct uio_info*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev,
				       const struct pci_device_id *id)
{
	struct uio_info *info;
	struct sercos3_priv *priv;
	int i;

	info = FUNC2(sizeof(struct uio_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	priv = FUNC2(sizeof(struct sercos3_priv), GFP_KERNEL);
	if (!priv)
		goto out_free;

	if (FUNC4(dev))
		goto out_free_priv;

	if (FUNC6(dev, "sercos3"))
		goto out_disable;

	/* we only need PCI BAR's 0, 2, 3, 4, 5 */
	if (FUNC8(dev, info, 0, 0))
		goto out_unmap;
	if (FUNC8(dev, info, 1, 2))
		goto out_unmap;
	if (FUNC8(dev, info, 2, 3))
		goto out_unmap;
	if (FUNC8(dev, info, 3, 4))
		goto out_unmap;
	if (FUNC8(dev, info, 4, 5))
		goto out_unmap;

	FUNC9(&priv->ier0_cache_lock);
	info->priv = priv;
	info->name = "Sercos_III_PCI";
	info->version = "0.0.1";
	info->irq = dev->irq;
	info->irq_flags = IRQF_SHARED;
	info->handler = sercos3_handler;
	info->irqcontrol = sercos3_irqcontrol;

	FUNC7(dev, info);

	if (FUNC10(&dev->dev, info))
		goto out_unmap;

	return 0;

out_unmap:
	for (i = 0; i < 5; i++) {
		if (info->mem[i].internal_addr)
			FUNC0(info->mem[i].internal_addr);
	}
	FUNC5(dev);
out_disable:
	FUNC3(dev);
out_free_priv:
	FUNC1(priv);
out_free:
	FUNC1(info);
	return -ENODEV;
}