
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_pmic_arb {int domain; int irq; } ;
struct spmi_controller {int dummy; } ;
struct platform_device {int dummy; } ;


 int irq_domain_remove (int ) ;
 int irq_set_chained_handler_and_data (int ,int *,int *) ;
 struct spmi_controller* platform_get_drvdata (struct platform_device*) ;
 struct spmi_pmic_arb* spmi_controller_get_drvdata (struct spmi_controller*) ;
 int spmi_controller_put (struct spmi_controller*) ;
 int spmi_controller_remove (struct spmi_controller*) ;

__attribute__((used)) static int spmi_pmic_arb_remove(struct platform_device *pdev)
{
 struct spmi_controller *ctrl = platform_get_drvdata(pdev);
 struct spmi_pmic_arb *pmic_arb = spmi_controller_get_drvdata(ctrl);
 spmi_controller_remove(ctrl);
 irq_set_chained_handler_and_data(pmic_arb->irq, ((void*)0), ((void*)0));
 irq_domain_remove(pmic_arb->domain);
 spmi_controller_put(ctrl);
 return 0;
}
