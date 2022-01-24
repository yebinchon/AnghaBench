#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  flags; void* name; int /*<<< orphan*/  start; int /*<<< orphan*/  end; } ;
struct TYPE_4__ {TYPE_2__* parent; int /*<<< orphan*/  dma_parms; int /*<<< orphan*/  dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_parms; int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  coherent_dma_mask; } ;
struct pci_dev {TYPE_2__ dev; int /*<<< orphan*/  irq; } ;
struct bdc_pci {struct platform_device* bdc; TYPE_2__* dev; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 void* BRCM_BDC_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct bdc_pci* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int,int) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct bdc_pci*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct platform_device*) ; 
 int FUNC12 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC13 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pci, const struct pci_device_id *id)
{
	struct resource res[2];
	struct platform_device *bdc;
	struct bdc_pci *glue;
	int ret = -ENOMEM;

	glue = FUNC3(&pci->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue)
		return -ENOMEM;

	glue->dev = &pci->dev;
	ret = FUNC6(pci);
	if (ret) {
		FUNC2(&pci->dev, "failed to enable pci device\n");
		return -ENODEV;
	}
	FUNC10(pci);

	bdc = FUNC13(BRCM_BDC_NAME, PLATFORM_DEVID_AUTO);
	if (!bdc)
		return -ENOMEM;

	FUNC5(res, 0x00, sizeof(struct resource) * FUNC0(res));
	FUNC1(pci);

	res[0].start	= FUNC8(pci, 0);
	res[0].end	= FUNC7(pci, 0);
	res[0].name	= BRCM_BDC_NAME;
	res[0].flags	= IORESOURCE_MEM;

	res[1].start	= pci->irq;
	res[1].name	= BRCM_BDC_NAME;
	res[1].flags	= IORESOURCE_IRQ;

	ret = FUNC12(bdc, res, FUNC0(res));
	if (ret) {
		FUNC2(&pci->dev,
			"couldn't add resources to bdc device\n");
		FUNC14(bdc);
		return ret;
	}

	FUNC9(pci, glue);

	FUNC4(&bdc->dev, pci->dev.coherent_dma_mask);

	bdc->dev.dma_mask = pci->dev.dma_mask;
	bdc->dev.dma_parms = pci->dev.dma_parms;
	bdc->dev.parent = &pci->dev;
	glue->bdc = bdc;

	ret = FUNC11(bdc);
	if (ret) {
		FUNC2(&pci->dev, "failed to register bdc device\n");
		FUNC14(bdc);
		return ret;
	}

	return 0;
}