#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; } ;
struct chv_pinctrl {TYPE_4__* community; int /*<<< orphan*/  pctldev; TYPE_2__ pctldesc; int /*<<< orphan*/  regs; int /*<<< orphan*/  saved_pin_context; int /*<<< orphan*/ * dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  unique_id; } ;
struct acpi_device {int /*<<< orphan*/  handle; TYPE_1__ pnp; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_8__ {int /*<<< orphan*/  acpi_space_id; int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__**) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct chv_pinctrl*) ; 
 TYPE_4__** chv_communities ; 
 int FUNC6 (struct chv_pinctrl*,int) ; 
 TYPE_2__ chv_pinctrl_desc ; 
 int /*<<< orphan*/  chv_pinctrl_mmio_access_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct chv_pinctrl* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,struct chv_pinctrl*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct chv_pinctrl*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct chv_pinctrl *pctrl;
	struct acpi_device *adev;
	acpi_status status;
	int ret, irq, i;

	adev = FUNC0(&pdev->dev);
	if (!adev)
		return -ENODEV;

	pctrl = FUNC10(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	for (i = 0; i < FUNC2(chv_communities); i++)
		if (!FUNC15(adev->pnp.unique_id, chv_communities[i]->uid)) {
			pctrl->community = chv_communities[i];
			break;
		}
	if (i == FUNC2(chv_communities))
		return -ENODEV;

	pctrl->dev = &pdev->dev;

#ifdef CONFIG_PM_SLEEP
	pctrl->saved_pin_context = devm_kcalloc(pctrl->dev,
		pctrl->community->npins, sizeof(*pctrl->saved_pin_context),
		GFP_KERNEL);
	if (!pctrl->saved_pin_context)
		return -ENOMEM;
#endif

	pctrl->regs = FUNC12(pdev, 0);
	if (FUNC3(pctrl->regs))
		return FUNC4(pctrl->regs);

	irq = FUNC13(pdev, 0);
	if (irq < 0)
		return irq;

	pctrl->pctldesc = chv_pinctrl_desc;
	pctrl->pctldesc.name = FUNC8(&pdev->dev);
	pctrl->pctldesc.pins = pctrl->community->pins;
	pctrl->pctldesc.npins = pctrl->community->npins;

	pctrl->pctldev = FUNC11(&pdev->dev, &pctrl->pctldesc,
					       pctrl);
	if (FUNC3(pctrl->pctldev)) {
		FUNC7(&pdev->dev, "failed to register pinctrl driver\n");
		return FUNC4(pctrl->pctldev);
	}

	ret = FUNC6(pctrl, irq);
	if (ret)
		return ret;

	status = FUNC5(adev->handle,
					pctrl->community->acpi_space_id,
					chv_pinctrl_mmio_access_handler,
					NULL, pctrl);
	if (FUNC1(status))
		FUNC7(&pdev->dev, "failed to install ACPI addr space handler\n");

	FUNC14(pdev, pctrl);

	return 0;
}