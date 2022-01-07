
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {scalar_t__ priv; } ;
struct pci_dev {int dev; } ;


 int dev_info (int *,char*,int ,int ,int ,int ,int ,int ) ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static void print_board_data(struct pci_dev *pdev, struct uio_info *i)
{
 dev_info(&pdev->dev, "PCI-TC board vendor: %x%x number: %x%x"
  " revision: %c%c\n",
  ioread8(i->priv + 0x01),
  ioread8(i->priv + 0x00),
  ioread8(i->priv + 0x03),
  ioread8(i->priv + 0x02),
  ioread8(i->priv + 0x06),
  ioread8(i->priv + 0x07));
}
