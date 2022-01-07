
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct pch_dev {TYPE_1__* regs; } ;
struct TYPE_2__ {int ch_control; } ;


 int ioread32 (int *) ;
 struct pch_dev* pci_get_drvdata (struct pci_dev*) ;

u32 pch_ch_control_read(struct pci_dev *pdev)
{
 struct pch_dev *chip = pci_get_drvdata(pdev);
 u32 val;

 val = ioread32(&chip->regs->ch_control);

 return val;
}
