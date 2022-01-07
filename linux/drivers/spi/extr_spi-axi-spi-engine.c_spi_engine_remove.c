
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct spi_engine {int clk; int ref_clk; scalar_t__ base; } ;
struct platform_device {int dummy; } ;


 scalar_t__ SPI_ENGINE_REG_INT_ENABLE ;
 scalar_t__ SPI_ENGINE_REG_INT_PENDING ;
 scalar_t__ SPI_ENGINE_REG_RESET ;
 int clk_disable_unprepare (int ) ;
 int free_irq (int,struct spi_master*) ;
 int platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct spi_master* spi_master_get (int ) ;
 struct spi_engine* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_unregister_master (struct spi_master*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int spi_engine_remove(struct platform_device *pdev)
{
 struct spi_master *master = spi_master_get(platform_get_drvdata(pdev));
 struct spi_engine *spi_engine = spi_master_get_devdata(master);
 int irq = platform_get_irq(pdev, 0);

 spi_unregister_master(master);

 free_irq(irq, master);

 spi_master_put(master);

 writel_relaxed(0xff, spi_engine->base + SPI_ENGINE_REG_INT_PENDING);
 writel_relaxed(0x00, spi_engine->base + SPI_ENGINE_REG_INT_ENABLE);
 writel_relaxed(0x01, spi_engine->base + SPI_ENGINE_REG_RESET);

 clk_disable_unprepare(spi_engine->ref_clk);
 clk_disable_unprepare(spi_engine->clk);

 return 0;
}
