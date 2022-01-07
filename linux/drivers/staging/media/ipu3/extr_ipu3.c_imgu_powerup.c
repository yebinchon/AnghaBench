
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_device {int mmu; int base; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int imgu_css_set_powerup (int *,int ) ;
 int imgu_mmu_resume (int ) ;

__attribute__((used)) static int imgu_powerup(struct imgu_device *imgu)
{
 int r;

 r = imgu_css_set_powerup(&imgu->pci_dev->dev, imgu->base);
 if (r)
  return r;

 imgu_mmu_resume(imgu->mmu);
 return 0;
}
