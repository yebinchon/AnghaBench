
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct chv_pinctrl {TYPE_1__* community; } ;
struct TYPE_2__ {int acpi_space_id; } ;


 int ACPI_COMPANION (int *) ;
 int acpi_remove_address_space_handler (int ,int ,int ) ;
 int chv_pinctrl_mmio_access_handler ;
 struct chv_pinctrl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int chv_pinctrl_remove(struct platform_device *pdev)
{
 struct chv_pinctrl *pctrl = platform_get_drvdata(pdev);

 acpi_remove_address_space_handler(ACPI_COMPANION(&pdev->dev),
       pctrl->community->acpi_space_id,
       chv_pinctrl_mmio_access_handler);

 return 0;
}
