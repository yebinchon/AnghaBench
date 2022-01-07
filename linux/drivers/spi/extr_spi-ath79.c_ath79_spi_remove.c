
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int master; } ;
struct ath79_spi {TYPE_1__ bitbang; int clk; } ;


 int ath79_spi_disable (struct ath79_spi*) ;
 int clk_disable_unprepare (int ) ;
 struct ath79_spi* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (TYPE_1__*) ;
 int spi_master_put (int ) ;

__attribute__((used)) static int ath79_spi_remove(struct platform_device *pdev)
{
 struct ath79_spi *sp = platform_get_drvdata(pdev);

 spi_bitbang_stop(&sp->bitbang);
 ath79_spi_disable(sp);
 clk_disable_unprepare(sp->clk);
 spi_master_put(sp->bitbang.master);

 return 0;
}
