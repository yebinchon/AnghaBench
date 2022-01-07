
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_spi {int master; int clk; int bitbang; } ;
struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 struct s3c24xx_spi* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (int *) ;
 int spi_master_put (int ) ;

__attribute__((used)) static int s3c24xx_spi_remove(struct platform_device *dev)
{
 struct s3c24xx_spi *hw = platform_get_drvdata(dev);

 spi_bitbang_stop(&hw->bitbang);
 clk_disable(hw->clk);
 spi_master_put(hw->master);
 return 0;
}
