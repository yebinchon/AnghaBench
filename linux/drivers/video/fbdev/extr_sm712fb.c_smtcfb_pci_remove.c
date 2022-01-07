
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smtcfb_info {int fb; } ;
struct pci_dev {int dummy; } ;


 int framebuffer_release (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct smtcfb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int smtc_unmap_mmio (struct smtcfb_info*) ;
 int smtc_unmap_smem (struct smtcfb_info*) ;
 int unregister_framebuffer (int ) ;

__attribute__((used)) static void smtcfb_pci_remove(struct pci_dev *pdev)
{
 struct smtcfb_info *sfb;

 sfb = pci_get_drvdata(pdev);
 smtc_unmap_smem(sfb);
 smtc_unmap_mmio(sfb);
 unregister_framebuffer(sfb->fb);
 framebuffer_release(sfb->fb);
 pci_release_region(pdev, 0);
 pci_disable_device(pdev);
}
