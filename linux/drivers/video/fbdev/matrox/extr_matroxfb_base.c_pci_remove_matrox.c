
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct matrox_fb_info {int dummy; } ;


 int matroxfb_remove (struct matrox_fb_info*,int) ;
 struct matrox_fb_info* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void pci_remove_matrox(struct pci_dev* pdev) {
 struct matrox_fb_info* minfo;

 minfo = pci_get_drvdata(pdev);
 matroxfb_remove(minfo, 1);
}
