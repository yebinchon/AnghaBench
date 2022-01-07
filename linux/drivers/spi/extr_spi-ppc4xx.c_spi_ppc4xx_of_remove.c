
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct ppc4xx_spi {int regs; int irqnum; int mapsize; int mapbase; int bitbang; } ;
struct platform_device {int dummy; } ;


 int free_gpios (struct ppc4xx_spi*) ;
 int free_irq (int ,struct ppc4xx_spi*) ;
 int iounmap (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int spi_bitbang_stop (int *) ;
 struct ppc4xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int spi_ppc4xx_of_remove(struct platform_device *op)
{
 struct spi_master *master = platform_get_drvdata(op);
 struct ppc4xx_spi *hw = spi_master_get_devdata(master);

 spi_bitbang_stop(&hw->bitbang);
 release_mem_region(hw->mapbase, hw->mapsize);
 free_irq(hw->irqnum, hw);
 iounmap(hw->regs);
 free_gpios(hw);
 spi_master_put(master);
 return 0;
}
