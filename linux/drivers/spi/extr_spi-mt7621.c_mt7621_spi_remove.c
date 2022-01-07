
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct platform_device {int dev; } ;
struct mt7621_spi {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct spi_controller* dev_get_drvdata (int *) ;
 struct mt7621_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int mt7621_spi_remove(struct platform_device *pdev)
{
 struct spi_controller *master;
 struct mt7621_spi *rs;

 master = dev_get_drvdata(&pdev->dev);
 rs = spi_controller_get_devdata(master);

 clk_disable_unprepare(rs->clk);

 return 0;
}
