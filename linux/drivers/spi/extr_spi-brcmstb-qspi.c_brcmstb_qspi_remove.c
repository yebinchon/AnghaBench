
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int bcm_qspi_remove (struct platform_device*) ;

__attribute__((used)) static int brcmstb_qspi_remove(struct platform_device *pdev)
{
 return bcm_qspi_remove(pdev);
}
