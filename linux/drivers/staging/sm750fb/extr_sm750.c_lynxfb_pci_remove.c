
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vram; } ;
struct sm750_dev {int pvMem; int pvReg; TYPE_1__ mtrr; } ;
struct pci_dev {int dummy; } ;


 int arch_phys_wc_del (int ) ;
 int g_settings ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct sm750_dev* pci_get_drvdata (struct pci_dev*) ;
 int sm750fb_framebuffer_release (struct sm750_dev*) ;

__attribute__((used)) static void lynxfb_pci_remove(struct pci_dev *pdev)
{
 struct sm750_dev *sm750_dev;

 sm750_dev = pci_get_drvdata(pdev);

 sm750fb_framebuffer_release(sm750_dev);
 arch_phys_wc_del(sm750_dev->mtrr.vram);

 iounmap(sm750_dev->pvReg);
 iounmap(sm750_dev->pvMem);
 kfree(g_settings);
}
