
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct viafb_dev {scalar_t__ chip_type; int fbmem_len; int * engine_mmio; int * fbmem; void* fbmem_start; TYPE_1__* pdev; int engine_len; void* engine_start; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 scalar_t__ UNICHROME_VX900 ;
 int dev_err (int *,char*) ;
 int * ioremap_nocache (void*,int ) ;
 int * ioremap_wc (void*,int) ;
 int iounmap (int *) ;
 int pci_resource_len (TYPE_1__*,int) ;
 void* pci_resource_start (TYPE_1__*,int) ;
 int viafb_get_fb_size_from_pci (scalar_t__) ;

__attribute__((used)) static int via_pci_setup_mmio(struct viafb_dev *vdev)
{
 int ret;





 vdev->engine_start = pci_resource_start(vdev->pdev, 1);
 vdev->engine_len = pci_resource_len(vdev->pdev, 1);
 vdev->engine_mmio = ioremap_nocache(vdev->engine_start,
   vdev->engine_len);
 if (vdev->engine_mmio == ((void*)0))
  dev_err(&vdev->pdev->dev,
    "Unable to map engine MMIO; operation will be "
    "slow and crippled.\n");







 if (vdev->chip_type == UNICHROME_VX900)
  vdev->fbmem_start = pci_resource_start(vdev->pdev, 2);
 else
  vdev->fbmem_start = pci_resource_start(vdev->pdev, 0);
 ret = vdev->fbmem_len = viafb_get_fb_size_from_pci(vdev->chip_type);
 if (ret < 0)
  goto out_unmap;


 for (; vdev->fbmem_len >= 8 << 20; vdev->fbmem_len /= 2) {
  vdev->fbmem = ioremap_wc(vdev->fbmem_start, vdev->fbmem_len);
  if (vdev->fbmem)
   break;
 }

 if (vdev->fbmem == ((void*)0)) {
  ret = -ENOMEM;
  goto out_unmap;
 }
 return 0;
out_unmap:
 iounmap(vdev->engine_mmio);
 return ret;
}
