
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dw_spi {int dummy; } ;


 int dw_spi_remove_host (struct dw_spi*) ;
 struct dw_spi* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void spi_pci_remove(struct pci_dev *pdev)
{
 struct dw_spi *dws = pci_get_drvdata(pdev);

 dw_spi_remove_host(dws);
}
