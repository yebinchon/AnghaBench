
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_device {int base; TYPE_1__* pci_dev; int mmu; } ;
struct TYPE_2__ {int dev; } ;


 int imgu_css_set_powerdown (int *,int ) ;
 int imgu_mmu_suspend (int ) ;

__attribute__((used)) static void imgu_powerdown(struct imgu_device *imgu)
{
 imgu_mmu_suspend(imgu->mmu);
 imgu_css_set_powerdown(&imgu->pci_dev->dev, imgu->base);
}
