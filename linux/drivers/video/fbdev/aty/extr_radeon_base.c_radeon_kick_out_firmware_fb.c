
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct apertures_struct {TYPE_1__* ranges; } ;
struct TYPE_2__ {int size; int base; } ;


 int ENOMEM ;
 int KBUILD_MODNAME ;
 struct apertures_struct* alloc_apertures (int) ;
 int kfree (struct apertures_struct*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int remove_conflicting_framebuffers (struct apertures_struct*,int ,int) ;

__attribute__((used)) static int radeon_kick_out_firmware_fb(struct pci_dev *pdev)
{
 struct apertures_struct *ap;

 ap = alloc_apertures(1);
 if (!ap)
  return -ENOMEM;

 ap->ranges[0].base = pci_resource_start(pdev, 0);
 ap->ranges[0].size = pci_resource_len(pdev, 0);

 remove_conflicting_framebuffers(ap, KBUILD_MODNAME, 0);

 kfree(ap);

 return 0;
}
