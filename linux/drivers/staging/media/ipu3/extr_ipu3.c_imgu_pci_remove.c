
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct imgu_device {int lock; int mmu; int base; int css; } ;


 int imgu_css_cleanup (int *) ;
 int imgu_css_set_powerdown (int *,int ) ;
 int imgu_dmamap_exit (struct imgu_device*) ;
 int imgu_mmu_exit (int ) ;
 int imgu_video_nodes_exit (struct imgu_device*) ;
 int mutex_destroy (int *) ;
 struct imgu_device* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_noresume (int *) ;

__attribute__((used)) static void imgu_pci_remove(struct pci_dev *pci_dev)
{
 struct imgu_device *imgu = pci_get_drvdata(pci_dev);

 pm_runtime_forbid(&pci_dev->dev);
 pm_runtime_get_noresume(&pci_dev->dev);

 imgu_video_nodes_exit(imgu);
 imgu_css_cleanup(&imgu->css);
 imgu_css_set_powerdown(&pci_dev->dev, imgu->base);
 imgu_dmamap_exit(imgu);
 imgu_mmu_exit(imgu->mmu);
 mutex_destroy(&imgu->lock);
}
