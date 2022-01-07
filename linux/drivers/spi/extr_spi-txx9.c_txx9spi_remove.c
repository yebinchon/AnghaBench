
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9spi {int clk; int work; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int flush_work (int *) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 struct txx9spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int txx9spi_remove(struct platform_device *dev)
{
 struct spi_master *master = platform_get_drvdata(dev);
 struct txx9spi *c = spi_master_get_devdata(master);

 flush_work(&c->work);
 clk_disable_unprepare(c->clk);
 return 0;
}
