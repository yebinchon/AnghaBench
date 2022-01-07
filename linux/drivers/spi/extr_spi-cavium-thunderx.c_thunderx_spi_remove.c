
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct pci_dev {int dummy; } ;
struct octeon_spi {scalar_t__ register_base; int clk; } ;


 scalar_t__ OCTEON_SPI_CFG (struct octeon_spi*) ;
 int clk_disable_unprepare (int ) ;
 struct spi_master* pci_get_drvdata (struct pci_dev*) ;
 struct octeon_spi* spi_master_get_devdata (struct spi_master*) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void thunderx_spi_remove(struct pci_dev *pdev)
{
 struct spi_master *master = pci_get_drvdata(pdev);
 struct octeon_spi *p;

 p = spi_master_get_devdata(master);
 if (!p)
  return;

 clk_disable_unprepare(p->clk);

 writeq(0, p->register_base + OCTEON_SPI_CFG(p));
}
