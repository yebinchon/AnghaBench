
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct spi_master* master; } ;
struct tiny_spi {unsigned int gpio_cs_count; int * gpio_cs; TYPE_1__ bitbang; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;


 int gpio_free (int ) ;
 struct tiny_spi* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (TYPE_1__*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int tiny_spi_remove(struct platform_device *pdev)
{
 struct tiny_spi *hw = platform_get_drvdata(pdev);
 struct spi_master *master = hw->bitbang.master;
 unsigned int i;

 spi_bitbang_stop(&hw->bitbang);
 for (i = 0; i < hw->gpio_cs_count; i++)
  gpio_free(hw->gpio_cs[i]);
 spi_master_put(master);
 return 0;
}
