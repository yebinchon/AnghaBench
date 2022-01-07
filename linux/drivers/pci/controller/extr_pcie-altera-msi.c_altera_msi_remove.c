
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct altera_msi {int irq; } ;


 int MSI_INTMASK ;
 int altera_free_domains (struct altera_msi*) ;
 int irq_set_chained_handler (int ,int *) ;
 int irq_set_handler_data (int ,int *) ;
 int msi_writel (struct altera_msi*,int ,int ) ;
 struct altera_msi* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int altera_msi_remove(struct platform_device *pdev)
{
 struct altera_msi *msi = platform_get_drvdata(pdev);

 msi_writel(msi, 0, MSI_INTMASK);
 irq_set_chained_handler(msi->irq, ((void*)0));
 irq_set_handler_data(msi->irq, ((void*)0));

 altera_free_domains(msi);

 platform_set_drvdata(pdev, ((void*)0));
 return 0;
}
