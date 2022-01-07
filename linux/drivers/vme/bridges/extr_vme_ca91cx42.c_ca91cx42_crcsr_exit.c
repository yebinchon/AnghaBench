
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {struct ca91cx42_driver* driver_priv; } ;
struct pci_dev {int dummy; } ;
struct ca91cx42_driver {int crcsr_bus; int crcsr_kernel; scalar_t__ base; } ;


 int CA91CX42_VCSR_CTL_EN ;
 scalar_t__ VCSR_CTL ;
 scalar_t__ VCSR_TO ;
 int VME_CRCSR_BUF_SIZE ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void ca91cx42_crcsr_exit(struct vme_bridge *ca91cx42_bridge,
 struct pci_dev *pdev)
{
 u32 tmp;
 struct ca91cx42_driver *bridge;

 bridge = ca91cx42_bridge->driver_priv;


 tmp = ioread32(bridge->base + VCSR_CTL);
 tmp &= ~CA91CX42_VCSR_CTL_EN;
 iowrite32(tmp, bridge->base + VCSR_CTL);


 iowrite32(0, bridge->base + VCSR_TO);

 pci_free_consistent(pdev, VME_CRCSR_BUF_SIZE, bridge->crcsr_kernel,
  bridge->crcsr_bus);
}
