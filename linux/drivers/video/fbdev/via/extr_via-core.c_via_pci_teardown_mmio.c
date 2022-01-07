
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viafb_dev {int engine_mmio; int fbmem; } ;


 int iounmap (int ) ;

__attribute__((used)) static void via_pci_teardown_mmio(struct viafb_dev *vdev)
{
 iounmap(vdev->fbmem);
 iounmap(vdev->engine_mmio);
}
