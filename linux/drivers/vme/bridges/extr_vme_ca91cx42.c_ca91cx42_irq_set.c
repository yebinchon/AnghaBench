
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {int parent; struct ca91cx42_driver* driver_priv; } ;
struct pci_dev {int irq; } ;
struct ca91cx42_driver {scalar_t__ base; } ;


 int * CA91CX42_LINT_VIRQ ;
 scalar_t__ LINT_EN ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int synchronize_irq (int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ca91cx42_irq_set(struct vme_bridge *ca91cx42_bridge, int level,
 int state, int sync)

{
 struct pci_dev *pdev;
 u32 tmp;
 struct ca91cx42_driver *bridge;

 bridge = ca91cx42_bridge->driver_priv;


 tmp = ioread32(bridge->base + LINT_EN);

 if (state == 0)
  tmp &= ~CA91CX42_LINT_VIRQ[level];
 else
  tmp |= CA91CX42_LINT_VIRQ[level];

 iowrite32(tmp, bridge->base + LINT_EN);

 if ((state == 0) && (sync != 0)) {
  pdev = to_pci_dev(ca91cx42_bridge->parent);

  synchronize_irq(pdev->irq);
 }
}
