
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cfb_info {int region; } ;


 int cyberpro_common_remove (struct cfb_info*) ;
 int cyberpro_free_fb_info (struct cfb_info*) ;
 struct cfb_info* int_cfb_info ;
 int iounmap (int ) ;
 struct cfb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void cyberpro_pci_remove(struct pci_dev *dev)
{
 struct cfb_info *cfb = pci_get_drvdata(dev);

 if (cfb) {
  cyberpro_common_remove(cfb);
  iounmap(cfb->region);
  cyberpro_free_fb_info(cfb);

  if (cfb == int_cfb_info)
   int_cfb_info = ((void*)0);

  pci_release_regions(dev);
 }
}
