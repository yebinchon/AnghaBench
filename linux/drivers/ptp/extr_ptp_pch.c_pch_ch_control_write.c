
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct pch_dev {TYPE_1__* regs; } ;
struct TYPE_2__ {int ch_control; } ;


 int iowrite32 (int ,int *) ;
 struct pch_dev* pci_get_drvdata (struct pci_dev*) ;

void pch_ch_control_write(struct pci_dev *pdev, u32 val)
{
 struct pch_dev *chip = pci_get_drvdata(pdev);

 iowrite32(val, (&chip->regs->ch_control));
}
