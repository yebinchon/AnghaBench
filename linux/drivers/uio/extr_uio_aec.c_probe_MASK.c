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
struct uio_info {char* name; char* version; scalar_t__ priv; int /*<<< orphan*/  handler; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq; TYPE_1__* port; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  porttype; int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ INTA_DRVR_ADDR ; 
 int INTA_ENABLED_FLAG ; 
 int /*<<< orphan*/  INT_ENABLE ; 
 scalar_t__ INT_ENABLE_ADDR ; 
 scalar_t__ INT_MASK_ADDR ; 
 int /*<<< orphan*/  INT_MASK_ALL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  UIO_PORT_GPIO ; 
 int /*<<< orphan*/  aectc_irq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct uio_info*) ; 
 struct uio_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 scalar_t__ FUNC11 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct uio_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct uio_info*) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct uio_info*) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct uio_info *info;
	int ret;

	info = FUNC5(sizeof(struct uio_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	if (FUNC7(pdev))
		goto out_free;

	if (FUNC11(pdev, "aectc"))
		goto out_disable;

	info->name = "aectc";
	info->port[0].start = FUNC13(pdev, 0);
	if (!info->port[0].start)
		goto out_release;
	info->priv = FUNC8(pdev, 0, 0);
	if (!info->priv)
		goto out_release;
	info->port[0].size = FUNC12(pdev, 0);
	info->port[0].porttype = UIO_PORT_GPIO;

	info->version = "0.0.1";
	info->irq = pdev->irq;
	info->irq_flags = IRQF_SHARED;
	info->handler = aectc_irq;

	FUNC15(pdev, info);
	ret = FUNC16(&pdev->dev, info);
	if (ret)
		goto out_unmap;

	FUNC2(INT_ENABLE, info->priv + INT_ENABLE_ADDR);
	FUNC3(INT_MASK_ALL, info->priv + INT_MASK_ADDR);
	if (!(FUNC1(info->priv + INTA_DRVR_ADDR)
			& INTA_ENABLED_FLAG))
		FUNC0(&pdev->dev, "aectc: interrupts not enabled\n");

	FUNC14(pdev, info);

	return 0;

out_unmap:
	FUNC9(pdev, info->priv);
out_release:
	FUNC10(pdev);
out_disable:
	FUNC6(pdev);
out_free:
	FUNC4(info);
	return -ENODEV;
}