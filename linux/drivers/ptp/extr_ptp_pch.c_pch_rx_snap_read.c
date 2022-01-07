
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct pch_dev {TYPE_1__* regs; } ;
struct TYPE_2__ {int rx_snap_hi; int rx_snap_lo; } ;


 int TICKS_NS_SHIFT ;
 int ioread32 (int *) ;
 struct pch_dev* pci_get_drvdata (struct pci_dev*) ;

u64 pch_rx_snap_read(struct pci_dev *pdev)
{
 struct pch_dev *chip = pci_get_drvdata(pdev);
 u64 ns;
 u32 lo, hi;

 lo = ioread32(&chip->regs->rx_snap_lo);
 hi = ioread32(&chip->regs->rx_snap_hi);

 ns = ((u64) hi) << 32;
 ns |= lo;
 ns <<= TICKS_NS_SHIFT;

 return ns;
}
