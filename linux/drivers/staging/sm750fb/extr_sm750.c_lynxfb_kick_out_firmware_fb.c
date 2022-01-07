
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_1__* resource; } ;
struct apertures_struct {TYPE_2__* ranges; } ;
struct TYPE_4__ {int size; int base; } ;
struct TYPE_3__ {int flags; } ;


 int ENOMEM ;
 int IORESOURCE_ROM_SHADOW ;
 size_t PCI_ROM_RESOURCE ;
 struct apertures_struct* alloc_apertures (int) ;
 int kfree (struct apertures_struct*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int remove_conflicting_framebuffers (struct apertures_struct*,char*,int) ;

__attribute__((used)) static int lynxfb_kick_out_firmware_fb(struct pci_dev *pdev)
{
 struct apertures_struct *ap;
 bool primary = 0;

 ap = alloc_apertures(1);
 if (!ap)
  return -ENOMEM;

 ap->ranges[0].base = pci_resource_start(pdev, 0);
 ap->ranges[0].size = pci_resource_len(pdev, 0);




 remove_conflicting_framebuffers(ap, "sm750_fb1", primary);
 kfree(ap);
 return 0;
}
