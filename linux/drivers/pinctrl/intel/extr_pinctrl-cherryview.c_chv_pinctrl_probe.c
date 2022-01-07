
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_7__ {int npins; int pins; int name; } ;
struct chv_pinctrl {TYPE_4__* community; int pctldev; TYPE_2__ pctldesc; int regs; int saved_pin_context; int * dev; } ;
struct TYPE_6__ {int unique_id; } ;
struct acpi_device {int handle; TYPE_1__ pnp; } ;
typedef int acpi_status ;
struct TYPE_8__ {int acpi_space_id; int npins; int pins; int uid; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ARRAY_SIZE (TYPE_4__**) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_install_address_space_handler (int ,int ,int ,int *,struct chv_pinctrl*) ;
 TYPE_4__** chv_communities ;
 int chv_gpio_probe (struct chv_pinctrl*,int) ;
 TYPE_2__ chv_pinctrl_desc ;
 int chv_pinctrl_mmio_access_handler ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int devm_kcalloc (int *,int ,int,int ) ;
 struct chv_pinctrl* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register (int *,TYPE_2__*,struct chv_pinctrl*) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct chv_pinctrl*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int chv_pinctrl_probe(struct platform_device *pdev)
{
 struct chv_pinctrl *pctrl;
 struct acpi_device *adev;
 acpi_status status;
 int ret, irq, i;

 adev = ACPI_COMPANION(&pdev->dev);
 if (!adev)
  return -ENODEV;

 pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
 if (!pctrl)
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(chv_communities); i++)
  if (!strcmp(adev->pnp.unique_id, chv_communities[i]->uid)) {
   pctrl->community = chv_communities[i];
   break;
  }
 if (i == ARRAY_SIZE(chv_communities))
  return -ENODEV;

 pctrl->dev = &pdev->dev;
 pctrl->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(pctrl->regs))
  return PTR_ERR(pctrl->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 pctrl->pctldesc = chv_pinctrl_desc;
 pctrl->pctldesc.name = dev_name(&pdev->dev);
 pctrl->pctldesc.pins = pctrl->community->pins;
 pctrl->pctldesc.npins = pctrl->community->npins;

 pctrl->pctldev = devm_pinctrl_register(&pdev->dev, &pctrl->pctldesc,
            pctrl);
 if (IS_ERR(pctrl->pctldev)) {
  dev_err(&pdev->dev, "failed to register pinctrl driver\n");
  return PTR_ERR(pctrl->pctldev);
 }

 ret = chv_gpio_probe(pctrl, irq);
 if (ret)
  return ret;

 status = acpi_install_address_space_handler(adev->handle,
     pctrl->community->acpi_space_id,
     chv_pinctrl_mmio_access_handler,
     ((void*)0), pctrl);
 if (ACPI_FAILURE(status))
  dev_err(&pdev->dev, "failed to install ACPI addr space handler\n");

 platform_set_drvdata(pdev, pctrl);

 return 0;
}
