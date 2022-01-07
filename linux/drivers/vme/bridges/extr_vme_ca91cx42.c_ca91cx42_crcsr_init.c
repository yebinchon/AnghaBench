
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {struct ca91cx42_driver* driver_priv; } ;
struct pci_dev {int dev; } ;
struct ca91cx42_driver {unsigned int crcsr_bus; scalar_t__ base; int crcsr_kernel; } ;


 int CA91CX42_VCSR_CTL_EN ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ VCSR_BS ;
 scalar_t__ VCSR_CTL ;
 scalar_t__ VCSR_TO ;
 int VME_CRCSR_BUF_SIZE ;
 int ca91cx42_slot_get (struct vme_bridge*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int) ;
 int geoid ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int pci_zalloc_consistent (struct pci_dev*,int ,unsigned int*) ;

__attribute__((used)) static int ca91cx42_crcsr_init(struct vme_bridge *ca91cx42_bridge,
 struct pci_dev *pdev)
{
 unsigned int crcsr_addr;
 int tmp, slot;
 struct ca91cx42_driver *bridge;

 bridge = ca91cx42_bridge->driver_priv;

 slot = ca91cx42_slot_get(ca91cx42_bridge);


 if (geoid)
  iowrite32(geoid << 27, bridge->base + VCSR_BS);

 dev_info(&pdev->dev, "CR/CSR Offset: %d\n", slot);
 if (slot == 0) {
  dev_err(&pdev->dev, "Slot number is unset, not configuring "
   "CR/CSR space\n");
  return -EINVAL;
 }


 bridge->crcsr_kernel = pci_zalloc_consistent(pdev, VME_CRCSR_BUF_SIZE,
           &bridge->crcsr_bus);
 if (!bridge->crcsr_kernel) {
  dev_err(&pdev->dev, "Failed to allocate memory for CR/CSR "
   "image\n");
  return -ENOMEM;
 }

 crcsr_addr = slot * (512 * 1024);
 iowrite32(bridge->crcsr_bus - crcsr_addr, bridge->base + VCSR_TO);

 tmp = ioread32(bridge->base + VCSR_CTL);
 tmp |= CA91CX42_VCSR_CTL_EN;
 iowrite32(tmp, bridge->base + VCSR_CTL);

 return 0;
}
